use utf8;
package QBPOS::Schema::Result::PurchaseOrder;

=head1 NAME

QBPOS::Schema::Result::PurchaseOrder - Main Purchase Order Table

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<PurchaseOrder>

=cut

__PACKAGE__->table("PurchaseOrder");

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

=head2 canceldate

  data_type: 'date'
  is_nullable: 1
  size: [10,0]

=head2 companyname

  data_type: 'varchar'
  is_nullable: 1
  size: [40,0]

=head2 discount

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 discountpercent

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

=head2 fee

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 instructions

  data_type: 'varchar'
  is_nullable: 1
  size: [2000,0]

=head2 itemscount

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 purchaseordernumber

  data_type: 'varchar'
  is_nullable: 1
  size: [20,0]

=head2 purchaseorderstatusdesc

  data_type: 'varchar'
  is_nullable: 1
  size: [200,0]

=head2 qtydue

  data_type: 'decimal'
  is_nullable: 1
  size: [13,5]

=head2 qtyordered

  data_type: 'decimal'
  is_nullable: 1
  size: [13,5]

=head2 qtyreceived

  data_type: 'decimal'
  is_nullable: 1
  size: [13,5]

=head2 salesordernumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 startshipdate

  data_type: 'date'
  is_nullable: 1
  size: [10,0]

=head2 storeexchangestatus

  data_type: 'varchar'
  is_nullable: 1
  size: [12,0]

=head2 storenumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 subtotal

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 terms

  data_type: 'varchar'
  is_nullable: 1
  size: [200,0]

=head2 termsdiscount

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

=head2 termsdiscountdays

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 termsnetdays

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 total

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 txndate

  data_type: 'date'
  is_nullable: 1
  size: [10,0]

=head2 unfilledpercent

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

=head2 vendorcode

  data_type: 'varchar'
  is_nullable: 1
  size: [3,0]

=head2 vendorlistid

  data_type: 'varchar'
  is_nullable: 0
  size: [36,0]

=head2 fqsavetocache

  data_type: 'bit'
  is_nullable: 1
  size: [1,0]

=head2 customfieldother1

  data_type: 'varchar'
  is_nullable: 1
  size: [30,0]

=head2 customfieldother2

  data_type: 'varchar'
  is_nullable: 1
  size: [30,0]

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
  "canceldate",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "companyname",
  { data_type => "varchar", is_nullable => 1, size => [40, 0] },
  "discount",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "discountpercent",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "fee",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "instructions",
  { data_type => "varchar", is_nullable => 1, size => [2000, 0] },
  "itemscount",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "purchaseordernumber",
  { data_type => "varchar", is_nullable => 1, size => [20, 0] },
  "purchaseorderstatusdesc",
  { data_type => "varchar", is_nullable => 1, size => [200, 0] },
  "qtydue",
  { data_type => "decimal", is_nullable => 1, size => [13, 5] },
  "qtyordered",
  { data_type => "decimal", is_nullable => 1, size => [13, 5] },
  "qtyreceived",
  { data_type => "decimal", is_nullable => 1, size => [13, 5] },
  "salesordernumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "startshipdate",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "storeexchangestatus",
  { data_type => "varchar", is_nullable => 1, size => [12, 0] },
  "storenumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "subtotal",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "terms",
  { data_type => "varchar", is_nullable => 1, size => [200, 0] },
  "termsdiscount",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "termsdiscountdays",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "termsnetdays",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "total",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "txndate",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "unfilledpercent",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "vendorcode",
  { data_type => "varchar", is_nullable => 1, size => [3, 0] },
  "vendorlistid",
  { data_type => "varchar", is_nullable => 0, size => [36, 0] },
  "fqsavetocache",
  { data_type => "bit", is_nullable => 1, size => [1, 0] },
  "customfieldother1",
  { data_type => "varchar", is_nullable => 1, size => [30, 0] },
  "customfieldother2",
  { data_type => "varchar", is_nullable => 1, size => [30, 0] },
);

=head1 PRIMARY KEY

=over 4

=item * L</txnid>

=back

=cut

__PACKAGE__->set_primary_key("txnid");


1;
