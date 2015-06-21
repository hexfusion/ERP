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

foreach my $col ( $col_min .. $col_max ) {
    my $value = $worksheet->get_cell( $row_min, $col )->value;

    print "Value" , $value, "\n";

    if ( $value eq 'Item #' ) {
       print "found Item #";
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

foreach my $row ( $row_min + 1 .. $row_max ) {
    my ( $item_num, $vendor_name, $expected, $counted );
    my $item_num_col = $worksheet->get_cell( $row, $item_num_header);
    my $vendor_name_col = $worksheet->get_cell( $row, $vendor_name_header );
    my $expected_col = $worksheet->get_cell( $row, $expected_header );
    my $counted_col =  $worksheet->get_cell( $row, $counted_header );

    if ( defined  $item_num_col ) {
        print "Item Number Found \n";
        $item_num =  $item_num_col->value;
    }
    else {
        print "WARNING NO Item Number Found \n";
    }
    if ( defined  $vendor_name_col ) {
        print "Vendor Name Found \n";
        $vendor_name = $vendor_name_col->value;
    }
    else {
        print "WARNING NO Vendor Name Found \n ";
    }
    if ( defined  $expected_col ) {
        print "Expected Count Found \n";
        $expected =  $expected_col->value;
    }
    else {
        print "WARNING NO expected count Found \n";
    }
    if ( defined  $counted_col ) {
        $counted = $counted_col->value;
    }
    else {
        print "WARNING NO Counted  Found \n";
    }
}
