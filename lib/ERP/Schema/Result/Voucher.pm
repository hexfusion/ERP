use utf8;
package QBPOS::Schema::Result::Voucher;

=head1 NAME

QBPOS::Schema::Result::Voucher - Main Voucher Table

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Voucher>

=cut

__PACKAGE__->table("Voucher");

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
