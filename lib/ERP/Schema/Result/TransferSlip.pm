use utf8;
package QBPOS::Schema::Result::TransferSlip;

=head1 NAME

QBPOS::Schema::Result::TransferSlip - Main Transfer Slip Table

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<TransferSlip>

=cut

__PACKAGE__->table("TransferSlip");

=head1 ACCESSORS

=head2 txnid

  data_type: 'varchar'
  is_nullable: 0
  size: [36,0]

=head2 timecreated

  data_type: 'timestamp'
  is_nullable: 1
  size: [23,3]

=head2 timemodified

  data_type: 'timestamp'
  is_nullable: 1
  size: [23,3]

=head2 associate

  data_type: 'varchar'
  is_nullable: 1
  size: [40,0]

=head2 carrier

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: [300,0]

=head2 freight

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

=head2 fromstorenumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 historydocstatus

  data_type: 'varchar'
  is_nullable: 1
  size: [9,0]

=head2 quickbooksflag

  data_type: 'varchar'
  is_nullable: 1
  size: [17,0]

=head2 itemscount

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 slipeta

  data_type: 'date'
  is_nullable: 1
  size: [10,0]

=head2 slipnumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 storeexchangestatus

  data_type: 'varchar'
  is_nullable: 1
  size: [12,0]

=head2 tostorenumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 totalcost

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

=head2 totalqty

  data_type: 'decimal'
  is_nullable: 1
  size: [13,5]

=head2 txndate

  data_type: 'date'
  is_nullable: 1
  size: [10,0]

=head2 txnstate

  data_type: 'varchar'
  is_nullable: 1
  size: [6,0]

=head2 workstation

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 fqsavetocache

  data_type: 'bit'
  is_nullable: 1
  size: [1,0]

=cut

__PACKAGE__->add_columns(
  "txnid",
  { data_type => "varchar", is_nullable => 0, size => [36, 0] },
  "timecreated",
  { data_type => "timestamp", is_nullable => 1, size => [23, 3] },
  "timemodified",
  { data_type => "timestamp", is_nullable => 1, size => [23, 3] },
  "associate",
  { data_type => "varchar", is_nullable => 1, size => [40, 0] },
  "carrier",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => [300, 0] },
  "freight",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "fromstorenumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "historydocstatus",
  { data_type => "varchar", is_nullable => 1, size => [9, 0] },
  "quickbooksflag",
  { data_type => "varchar", is_nullable => 1, size => [17, 0] },
  "itemscount",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "slipeta",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "slipnumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "storeexchangestatus",
  { data_type => "varchar", is_nullable => 1, size => [12, 0] },
  "tostorenumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "totalcost",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "totalqty",
  { data_type => "decimal", is_nullable => 1, size => [13, 5] },
  "txndate",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "txnstate",
  { data_type => "varchar", is_nullable => 1, size => [6, 0] },
  "workstation",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "fqsavetocache",
  { data_type => "bit", is_nullable => 1, size => [1, 0] },
);

=head1 PRIMARY KEY

=over 4

=item * L</txnid>

=back

=cut

__PACKAGE__->set_primary_key("txnid");

1;
