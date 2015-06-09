use utf8;
package QBPOS::Schema::Result::VoucherItem;

=head1 NAME

QBPOS::Schema::Result::VoucherItem

=head1 DESCRIPTION

Provides line item detail for a voucher, contains all the information included in the Main Voucher Table

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<VoucherItem>

=cut

__PACKAGE__->table("VoucherItem");

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

=head2 freight

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 historydocstatus

  data_type: 'varchar'
  is_nullable: 1
  size: [9,0]

=head2 invoicedate

  data_type: 'date'
  is_nullable: 1
  size: [10,0]

=head2 invoiceduedate

  data_type: 'date'
  is_nullable: 1
  size: [10,0]

=head2 invoicenumber

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 itemscount

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 payeecode

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 payeelistid

  data_type: 'varchar'
  is_nullable: 1
  size: [36,0]

=head2 payeename

  data_type: 'varchar'
  is_nullable: 1
  size: [26,0]

=head2 purchaseordernumber

  data_type: 'varchar'
  is_nullable: 1
  size: [20,0]

=head2 purchaseordertxnid

  data_type: 'varchar'
  is_nullable: 1
  size: [36,0]

=head2 quickbooksflag

  data_type: 'varchar'
  is_nullable: 1
  size: [17,0]

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

=head2 vendorcode

  data_type: 'varchar'
  is_nullable: 1
  size: [3,0]

=head2 vendorlistid

  data_type: 'varchar'
  is_nullable: 1
  size: [36,0]

=head2 vouchernumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 vouchertype

  data_type: 'varchar'
  is_nullable: 1
  size: [9,0]

=head2 workstation

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 voucheritemseqno

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 voucheritemlistid

  data_type: 'varchar'
  is_nullable: 0
  size: [36,0]

=head2 voucheritemalu

  data_type: 'varchar'
  is_nullable: 1
  size: [20,0]

=head2 voucheritemattribute

  data_type: 'varchar'
  is_nullable: 1
  size: [8,0]

=head2 voucheritemcost

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 voucheritemdesc1

  data_type: 'varchar'
  is_nullable: 1
  size: [30,0]

=head2 voucheritemdesc2

  data_type: 'varchar'
  is_nullable: 1
  size: [30,0]

=head2 voucheritemextendedcost

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 voucheritemitemnumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 voucheritemqtyreceived

  data_type: 'decimal'
  is_nullable: 1
  size: [13,5]

=head2 voucheritemserialnumber

  data_type: 'varchar'
  is_nullable: 1
  size: [25,0]

=head2 voucheritemsize

  data_type: 'varchar'
  is_nullable: 1
  size: [8,0]

=head2 voucheritemupc

  data_type: 'varchar'
  is_nullable: 1
  size: [18,0]

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
  "companyname",
  { data_type => "varchar", is_nullable => 1, size => [40, 0] },
  "discount",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "discountpercent",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "fee",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "freight",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "historydocstatus",
  { data_type => "varchar", is_nullable => 1, size => [9, 0] },
  "invoicedate",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "invoiceduedate",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "invoicenumber",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "itemscount",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "payeecode",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "payeelistid",
  { data_type => "varchar", is_nullable => 1, size => [36, 0] },
  "payeename",
  { data_type => "varchar", is_nullable => 1, size => [26, 0] },
  "purchaseordernumber",
  { data_type => "varchar", is_nullable => 1, size => [20, 0] },
  "purchaseordertxnid",
  { data_type => "varchar", is_nullable => 1, size => [36, 0] },
  "quickbooksflag",
  { data_type => "varchar", is_nullable => 1, size => [17, 0] },
  "storeexchangestatus",
  { data_type => "varchar", is_nullable => 1, size => [12, 0] },
  "storenumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "subtotal",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "termsdiscount",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "termsdiscountdays",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "termsnetdays",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "total",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "totalqty",
  { data_type => "decimal", is_nullable => 1, size => [13, 5] },
  "txndate",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "txnstate",
  { data_type => "varchar", is_nullable => 1, size => [6, 0] },
  "vendorcode",
  { data_type => "varchar", is_nullable => 1, size => [3, 0] },
  "vendorlistid",
  { data_type => "varchar", is_nullable => 1, size => [36, 0] },
  "vouchernumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "vouchertype",
  { data_type => "varchar", is_nullable => 1, size => [9, 0] },
  "workstation",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "voucheritemseqno",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "voucheritemlistid",
  { data_type => "varchar", is_nullable => 0, size => [36, 0] },
  "voucheritemalu",
  { data_type => "varchar", is_nullable => 1, size => [20, 0] },
  "voucheritemattribute",
  { data_type => "varchar", is_nullable => 1, size => [8, 0] },
  "voucheritemcost",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "voucheritemdesc1",
  { data_type => "varchar", is_nullable => 1, size => [30, 0] },
  "voucheritemdesc2",
  { data_type => "varchar", is_nullable => 1, size => [30, 0] },
  "voucheritemextendedcost",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "voucheritemitemnumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "voucheritemqtyreceived",
  { data_type => "decimal", is_nullable => 1, size => [13, 5] },
  "voucheritemserialnumber",
  { data_type => "varchar", is_nullable => 1, size => [25, 0] },
  "voucheritemsize",
  { data_type => "varchar", is_nullable => 1, size => [8, 0] },
  "voucheritemupc",
  { data_type => "varchar", is_nullable => 1, size => [18, 0] },
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
