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

my ( $help, $testing, $export_dir, $clear );

GetOptions(
    "testing" => \$testing,
    "export_dir=s" => \$export_dir,
    "clear" => \$clear,
    "help" => \$help
);

pod2usage(1) if $help;

my $schema_erp = schema('dbic_erp');
my $schema_angler = schema('default');

my $inventory_sync = ERP::Sync::Inventory->new(
    schema_erp => $schema_erp,
    schema_angler => $schema_angler,
    testing => $testing,
    clear => $clear,
    export_dir => $export_dir
);

$inventory_sync->clear if $clear;
my $records = $inventory_sync->run;

info "### TESTING ONLY ####" if $testing;
info $records->{updated} , " were updated ", $records->{created}, " were created."

__END__

=head1 NAME

inventory_sync.pl - Syncs ERP inventory with  Angler

=head1 SYNOPSIS

inventory_sync.pl [options]

 Options:
  -t | --testing          set testing only (defaults to false)
  -e | --export_dir       set export directory for sync report
  -c | --clear            clear all local inventory for all items before sync is ran.
  -h | --help             help message

=cut

