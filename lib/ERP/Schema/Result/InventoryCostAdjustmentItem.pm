use utf8;
package QBPOS::Schema::Result::InventoryCostAdjustmentItem;

=head1 NAME

QBPOS::Schema::Result::InventoryCostAdjustmentItem - Insert Only Inventory Cost Adjustment Item Table

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<InventoryCostAdjustmentItem>

=cut

__PACKAGE__->table("InventoryCostAdjustmentItem");

=head1 ACCESSORS

=head2 txnid

  data_type: 'varchar'
  is_nullable: 1
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

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: [300,0]

=head2 costdifference

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 historydocstatus

  data_type: 'varchar'
  is_nullable: 1
  size: [9,0]

=head2 inventoryadjustmentnumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 inventoryadjustmentsource

  data_type: 'varchar'
  is_nullable: 1
  size: [17,0]

=head2 itemscount

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 newcost

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 oldcost

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 quickbooksflag

  data_type: 'varchar'
  is_nullable: 1
  size: [17,0]

=head2 reason

  data_type: 'varchar'
  is_nullable: 1
  size: [8,0]

=head2 storeexchangestatus

  data_type: 'varchar'
  is_nullable: 1
  size: [17,0]

=head2 storenumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

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

=head2 inventorycostadjustmentitemseqno

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 inventorycostadjustmentitemlistid

  data_type: 'varchar'
  is_nullable: 1
  size: [36,0]

=head2 inventorycostadjustmentitemcostdifference

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 inventorycostadjustmentitemnewcost

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 inventorycostadjustmentitemoldcost

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 fqsavetocache

  data_type: 'bit'
  is_nullable: 1
  size: [1,0]

=head2 fqprimarykey

  data_type: 'varchar'
  is_nullable: 0
  size: [110,0]

=cut

__PACKAGE__->add_columns(
  "txnid",
  { data_type => "varchar", is_nullable => 1, size => [36, 0] },
  "timecreated",
  { data_type => "timestamp", is_nullable => 1, size => [23, 3] },
  "timemodified",
  { data_type => "timestamp", is_nullable => 1, size => [23, 3] },
  "associate",
  { data_type => "varchar", is_nullable => 1, size => [40, 0] },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => [300, 0] },
  "costdifference",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "historydocstatus",
  { data_type => "varchar", is_nullable => 1, size => [9, 0] },
  "inventoryadjustmentnumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "inventoryadjustmentsource",
  { data_type => "varchar", is_nullable => 1, size => [17, 0] },
  "itemscount",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "newcost",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "oldcost",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "quickbooksflag",
  { data_type => "varchar", is_nullable => 1, size => [17, 0] },
  "reason",
  { data_type => "varchar", is_nullable => 1, size => [8, 0] },
  "storeexchangestatus",
  { data_type => "varchar", is_nullable => 1, size => [17, 0] },
  "storenumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "txndate",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "txnstate",
  { data_type => "varchar", is_nullable => 1, size => [6, 0] },
  "workstation",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "inventorycostadjustmentitemseqno",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "inventorycostadjustmentitemlistid",
  { data_type => "varchar", is_nullable => 1, size => [36, 0] },
  "inventorycostadjustmentitemcostdifference",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "inventorycostadjustmentitemnewcost",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "inventorycostadjustmentitemoldcost",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "fqsavetocache",
  { data_type => "bit", is_nullable => 1, size => [1, 0] },
  "fqprimarykey",
  { data_type => "varchar", is_nullable => 0, size => [110, 0] },
);

=head1 PRIMARY KEY

=over 4

=item * L</fqprimarykey>

=back

=cut

__PACKAGE__->set_primary_key("fqprimarykey");


1;
