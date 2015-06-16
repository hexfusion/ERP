#!C:\Perl64\bin\perl.exe

use warnings;
use strict;
use v5.14;

package Product;

use Moo;

package main;

use Dancer ':script';
use Dancer::Plugin::DBIC;
use Dancer::Plugin::Interchange6;
use ERP::Inventory::Sync;
use Try::Tiny;
use Getopt::Long;
use Data::Dumper::Concise;

set logger => 'console';
set log    => 'info';

my ( $help, $export_dir);

GetOptions(
    "type=s" => \$type,
    "export_dir=s" => \$export_dir,
    "help" => \$help
);

pod2usage(1) if $help;

my $schema_erp = schema('dbic_erp');
my $schema_angler = schema('default');

# default type is test
unless ($type) {
    $type = 'test';

    # run an inventory sync test only
    my $inventory_sync = ERP::Sync::Inventory->new(
        schema_erp => $schema_erp,
        schema_angler => $schema_angler,
        type => $type,
        export_dir => $export_dir
    );

    $inventory_sync->run;
}

__END__

=head1 NAME

inventory_sync.pl - Syncs ERP inventory with  Angler

=head1 SYNOPSIS

inventory_sync.pl [options]

 Options:
  -t | --type             set inventory type. options are sync and test (defaults to 'test')
  -e | --export_dir       set export directory for sync report
  -h | --help             help message

=cut

