#!/usr/bin/env perl

use warnings;
use strict;
use v5.14;

use lib '/home/sam/Apps/angler/applications/Angler/lib';
use Dancer ':script';
use Dancer::Plugin::DBIC;
use File::Basename;
use File::Path qw/make_path/;
use File::Spec;
use List::Util qw/all/;
use Spreadsheet::ParseXLSX;
use Try::Tiny;
use URI::Escape;
use Data::Dumper::Concise;
use List::MoreUtils qw(uniq);

set logger => 'console';
set log    => 'info';

my $schema = schema('dbic_erp');

my $inventory_report = 
  File::Spec->catfile( [ File::Spec->splitpath($0) ]->[1],
  '..', '..', '..', '..', 'data', 'adjust_inventory_count.xlsx' ); 

my $parser = Spreadsheet::ParseXLSX->new;

# parse the file

my $workbook = $parser->parse($inventory_report);

if ( !defined $workbook ) {
    print "$inventory_report";
    die $parser->error(), ".\n";
}

# we need at least one worksheet
die "no worksheets found" unless $workbook->worksheet_count;

my $worksheet = $workbook->worksheet(0);
die "worksheet not found" unless $worksheet;

my ($item_num_header, $vendor_name_header, $expected_header, $counted_header);

# col/row ranges in use
my ( $row_min, $row_max ) = $worksheet->row_range();
my ( $col_min, $col_max ) = $worksheet->col_range();

# column that contains the header data.
my $header_col = '6';

foreach my $col ( $col_min .. $col_max ) {
    my $value = $worksheet->get_cell( $row_min, $col )->value;

    if ( $value eq 'Item #' ) {
       $item_num_header = $col;
    }
    elsif ( $value eq 'Vendor Name' ) {
        $vendor_name_header = $col;
    }
    elsif ( $value eq 'Expected' ) {
        $expected_header = $col;
    }
    elsif ( $value eq 'Counted' ) {
        $counted_header = $col;
    }
}

my @vendor_list;

# define vendors
foreach my $row ( $row_min + 1 .. $row_max ) {
    my $vendor_name;
    my $vendor_name_col = $worksheet->get_cell( $row, $vendor_name_header );

    if ( defined  $vendor_name_col ) {
        $vendor_name = $vendor_name_col->value;
        push @vendor_list, $vendor_name;
    }
    else {
        print "WARNING NO Vendor Name Found \n ";
    }
}
# make unique
@vendor_list = uniq @vendor_list;

my $vendor_rs = $schema->resultset('Vendor');
my $product_rs = $schema->resultset('ItemInventory');

my %product;
my %vendor;

# create a hash of all the data we need so we don't have to search it again
while (my $item = $product_rs->next) {
    $product{$item->itemnumber}= { listid => $item->listid };
}    

# create a hash of all the data we need so we don't have to search it again
while (my $manf = $vendor_rs->next) {
    $vendor{$manf->companyname}= { listid => $manf->listid };
}

my ( $purchase_order_created, $sales_order_created );

foreach my $record (@vendor_list) {
    foreach my $row ( $row_min + 1 .. $row_max ) {
   	my ( $item_num, $vendor_name, $expected, $counted );
        my $row_next = ($row +1);
	my $item_num_col = $worksheet->get_cell( $row, $item_num_header);
        my $vendor_name_col = $worksheet->get_cell( $row, $vendor_name_header );
	my $expected_col = $worksheet->get_cell( $row, $expected_header );
        my $counted_col =  $worksheet->get_cell( $row, $counted_header );

        if ( defined  $item_num_col ) {
            $item_num =  $item_num_col->value;
        }
        if ( defined  $vendor_name_col ) {
            $vendor_name = $vendor_name_col->value;
        }
        if ( defined  $expected_col ) {
            $expected =  $expected_col->value;
        }
        if ( defined  $counted_col ) {
            $counted = $counted_col->value;
        }

        # check if the vendor in loop is the same as the vendor excel record
        if ( $record eq $vendor_name ) {
            my $save_to_cache;
	    my $vendor_next;

	    unless ($row == $row_max) {
                $vendor_next = $worksheet->get_cell( $row_next, $vendor_name_header )->value;
            }

	    if ( ($row == $row_max) or ($vendor_next ne $vendor_name) ) {
                $save_to_cache = '0';
            }
                
	    else {
                $save_to_cache = '1';
            }

    	    my $differnce = ( $expected - $counted ); 
            my $vendor_listid =  $vendor{$record}->{listid};
            my $product_listid = $product{$item_num}->{listid};

            # if difference is negative we need to create a purchase order
            if ($differnce < '0') {
                $purchase_order_created = '1';

		print "record = ", $record , "listid ", $vendor{$record}->{listid};	

		# create purchse order lines
		my $purchase_order = $schema->resultset('PurchaseOrderItem')->create({
                        purchaseorderitemlistid => $product_listid,
                        purchaseorderitemcost => '0',
                        purchaseorderitemqty => $differnce,
                        fqsavetocache => $save_to_cache,
                        vendorlistid => $vendor_listid 
                });	       
            }
            elsif ($differnce > '0') {
                $sales_order_created = '1';

                # create sales order lines
                my $sales_order = $schema->resultset('SalesOrderItem')->create({
                    salesorderitemlistid => $product_listid,
                    salesorderitemprice => '0',
                    salesorderitemqty => $differnce,
                    fqsavetocache => $save_to_cache,
                    customerlistid => '-1615806974685966591' # default customer 'Inventory Sync'
                });
            }
        }
    }
}

1;
