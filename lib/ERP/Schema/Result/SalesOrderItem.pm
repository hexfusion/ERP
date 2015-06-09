use utf8;
package QBPOS::Schema::Result::SalesOrderItem;

=head1 NAME

QBPOS::Schema::Result::SalesOrderItem

=head1 DESCRIPTION

Provides line item detail for a sales order; contains all the information included in the Main Sales Order Table

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<SalesOrderItem>

=cut

__PACKAGE__->table("SalesOrderItem");

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

  data_type: 'decimal'
  is_nullable: 1
  size: [40,0]

=head2 balancedue

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 cashier

  data_type: 'varchar'
  is_nullable: 1
  size: [40,0]

=head2 customerlistid

  data_type: 'varchar'
  is_nullable: 0
  size: [36,0]

=head2 depositbalance

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 discount

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 discountpercent

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

=head2 instructions

  data_type: 'varchar'
  is_nullable: 1
  size: [2000,0]

=head2 itemscount

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 pricelevelnumber

  data_type: 'varchar'
  is_nullable: 1
  size: [1,0]

=head2 promocode

  data_type: 'varchar'
  is_nullable: 1
  size: [10,0]

=head2 qty

  data_type: 'decimal'
  is_nullable: 1
  size: [13,5]

=head2 salesordernumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 salesorderstatusdesc

  data_type: 'varchar'
  is_nullable: 1
  size: [50,0]

=head2 salesordertype

  data_type: 'varchar'
  is_nullable: 1
  size: [10,0]

=head2 storeexchangestatus

  data_type: 'varchar'
  is_nullable: 1
  size: [12,0]

=head2 subtotal

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 taxamount

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 taxcategory

  data_type: 'varchar'
  is_nullable: 1
  size: [20,0]

=head2 taxpercent

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

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

=head2 billinginformationcity

  data_type: 'varchar'
  is_nullable: 1
  size: [31,0]

=head2 billinginformationcompanyname

  data_type: 'varchar'
  is_nullable: 1
  size: [25,0]

=head2 billinginformationcountry

  data_type: 'varchar'
  is_nullable: 1
  size: [32,0]

=head2 billinginformationfirstname

  data_type: 'varchar'
  is_nullable: 1
  size: [30,0]

=head2 billinginformationlastname

  data_type: 'varchar'
  is_nullable: 1
  size: [30,0]

=head2 billinginformationphone

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 billinginformationphone2

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 billinginformationphone3

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 billinginformationphone4

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 billinginformationpostalcode

  data_type: 'varchar'
  is_nullable: 1
  size: [10,0]

=head2 billinginformationsalutation

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 billinginformationstate

  data_type: 'varchar'
  is_nullable: 1
  size: [21,0]

=head2 billinginformationstreet

  data_type: 'varchar'
  is_nullable: 1
  size: [41,0]

=head2 shippinginformationcity

  data_type: 'varchar'
  is_nullable: 1
  size: [31,0]

=head2 shippinginformationcompanyname

  data_type: 'varchar'
  is_nullable: 1
  size: [25,0]

=head2 shippinginformationcountry

  data_type: 'varchar'
  is_nullable: 1
  size: [32,0]

=head2 shippinginformationfullname

  data_type: 'varchar'
  is_nullable: 1
  size: [159,0]

=head2 shippinginformationphone

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 shippinginformationphone2

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 shippinginformationphone3

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 shippinginformationphone4

  data_type: 'varchar'
  is_nullable: 1
  size: [15,0]

=head2 shippinginformationpostalcode

  data_type: 'varchar'
  is_nullable: 1
  size: [10,0]

=head2 shippinginformationshipby

  data_type: 'varchar'
  is_nullable: 1
  size: [50,0]

=head2 shippinginformationshipping

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 shippinginformationstate

  data_type: 'varchar'
  is_nullable: 1
  size: [21,0]

=head2 shippinginformationstreet

  data_type: 'varchar'
  is_nullable: 1
  size: [41,0]

=head2 salesorderitemseqno

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 salesorderitemlistid

  data_type: 'varchar'
  is_nullable: 0
  size: [36,0]

=head2 salesorderitemtxnlineid

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 salesorderitemalu

  data_type: 'varchar'
  is_nullable: 1
  size: [20,0]

=head2 salesorderitemassociate

  data_type: 'varchar'
  is_nullable: 1
  size: [40,0]

=head2 salesorderitemattribute

  data_type: 'varchar'
  is_nullable: 1
  size: [8,0]

=head2 salesorderitemcommission

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 salesorderitemdesc1

  data_type: 'varchar'
  is_nullable: 1
  size: [30,0]

=head2 salesorderitemdesc2

  data_type: 'varchar'
  is_nullable: 1
  size: [30,0]

=head2 salesorderitemdiscount

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

=head2 salesorderitemdiscountpercent

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

=head2 salesorderitemdiscounttype

  data_type: -8
  is_nullable: 1
  size: [16,0]

=head2 salesorderitemextendedprice

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 salesorderitemextendedtax

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 salesorderitemitemnumber

  data_type: 'integer'
  is_nullable: 1
  size: [10,0]

=head2 salesorderitemprice

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 salesorderitempricelevelnumber

  data_type: 'varchar'
  is_nullable: 1
  size: [1,0]

=head2 salesorderitemqty

  data_type: 'decimal'
  is_nullable: 1
  size: [13,5]

=head2 salesorderitemserialnumber

  data_type: 'varchar'
  is_nullable: 1
  size: [25,0]

=head2 salesorderitemsize

  data_type: 'varchar'
  is_nullable: 1
  size: [8,0]

=head2 salesorderitemtaxamount

  data_type: 'decimal'
  is_nullable: 1
  size: [14,5]

=head2 salesorderitemtaxcode

  data_type: 'varchar'
  is_nullable: 1
  size: [36,0]

=head2 salesorderitemtaxpercent

  data_type: 'decimal'
  is_nullable: 1
  size: [11,2]

=head2 salesorderitemupc

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
  "balancedue",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "cashier",
  { data_type => "varchar", is_nullable => 1, size => [40, 0] },
  "customerlistid",
  { data_type => "varchar", is_nullable => 0, size => [36, 0] },
  "depositbalance",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "discount",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "discountpercent",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "instructions",
  { data_type => "varchar", is_nullable => 1, size => [2000, 0] },
  "itemscount",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "pricelevelnumber",
  { data_type => "varchar", is_nullable => 1, size => [1, 0] },
  "promocode",
  { data_type => "varchar", is_nullable => 1, size => [10, 0] },
  "qty",
  { data_type => "decimal", is_nullable => 1, size => [13, 5] },
  "salesordernumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "salesorderstatusdesc",
  { data_type => "varchar", is_nullable => 1, size => [50, 0] },
  "salesordertype",
  { data_type => "varchar", is_nullable => 1, size => [10, 0] },
  "storeexchangestatus",
  { data_type => "varchar", is_nullable => 1, size => [12, 0] },
  "subtotal",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "taxamount",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "taxcategory",
  { data_type => "varchar", is_nullable => 1, size => [20, 0] },
  "taxpercent",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "total",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "txndate",
  { data_type => "date", is_nullable => 1, size => [10, 0] },
  "unfilledpercent",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "billinginformationcity",
  { data_type => "varchar", is_nullable => 1, size => [31, 0] },
  "billinginformationcompanyname",
  { data_type => "varchar", is_nullable => 1, size => [25, 0] },
  "billinginformationcountry",
  { data_type => "varchar", is_nullable => 1, size => [32, 0] },
  "billinginformationfirstname",
  { data_type => "varchar", is_nullable => 1, size => [30, 0] },
  "billinginformationlastname",
  { data_type => "varchar", is_nullable => 1, size => [30, 0] },
  "billinginformationphone",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "billinginformationphone2",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "billinginformationphone3",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "billinginformationphone4",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "billinginformationpostalcode",
  { data_type => "varchar", is_nullable => 1, size => [10, 0] },
  "billinginformationsalutation",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "billinginformationstate",
  { data_type => "varchar", is_nullable => 1, size => [21, 0] },
  "billinginformationstreet",
  { data_type => "varchar", is_nullable => 1, size => [41, 0] },
  "shippinginformationcity",
  { data_type => "varchar", is_nullable => 1, size => [31, 0] },
  "shippinginformationcompanyname",
  { data_type => "varchar", is_nullable => 1, size => [25, 0] },
  "shippinginformationcountry",
  { data_type => "varchar", is_nullable => 1, size => [32, 0] },
  "shippinginformationfullname",
  { data_type => "varchar", is_nullable => 1, size => [159, 0] },
  "shippinginformationphone",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "shippinginformationphone2",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "shippinginformationphone3",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "shippinginformationphone4",
  { data_type => "varchar", is_nullable => 1, size => [15, 0] },
  "shippinginformationpostalcode",
  { data_type => "varchar", is_nullable => 1, size => [10, 0] },
  "shippinginformationshipby",
  { data_type => "varchar", is_nullable => 1, size => [50, 0] },
  "shippinginformationshipping",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "shippinginformationstate",
  { data_type => "varchar", is_nullable => 1, size => [21, 0] },
  "shippinginformationstreet",
  { data_type => "varchar", is_nullable => 1, size => [41, 0] },
  "salesorderitemseqno",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "salesorderitemlistid",
  { data_type => "varchar", is_nullable => 0, size => [36, 0] },
  "salesorderitemtxnlineid",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "salesorderitemalu",
  { data_type => "varchar", is_nullable => 1, size => [20, 0] },
  "salesorderitemassociate",
  { data_type => "varchar", is_nullable => 1, size => [40, 0] },
  "salesorderitemattribute",
  { data_type => "varchar", is_nullable => 1, size => [8, 0] },
  "salesorderitemcommission",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "salesorderitemdesc1",
  { data_type => "varchar", is_nullable => 1, size => [30, 0] },
  "salesorderitemdesc2",
  { data_type => "varchar", is_nullable => 1, size => [30, 0] },
  "salesorderitemdiscount",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "salesorderitemdiscountpercent",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "salesorderitemdiscounttype",
  { data_type => "varchar", is_nullable => 1, size => [16, 0] },
  "salesorderitemextendedprice",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "salesorderitemextendedtax",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "salesorderitemitemnumber",
  { data_type => "integer", is_nullable => 1, size => [10, 0] },
  "salesorderitemprice",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "salesorderitempricelevelnumber",
  { data_type => "varchar", is_nullable => 1, size => [1, 0] },
  "salesorderitemqty",
  { data_type => "decimal", is_nullable => 1, size => [13, 5] },
  "salesorderitemserialnumber",
  { data_type => "varchar", is_nullable => 1, size => [25, 0] },
  "salesorderitemsize",
  { data_type => "varchar", is_nullable => 1, size => [8, 0] },
  "salesorderitemtaxamount",
  { data_type => "decimal", is_nullable => 1, size => [14, 5] },
  "salesorderitemtaxcode",
  { data_type => "varchar", is_nullable => 1, size => [36, 0] },
  "salesorderitemtaxpercent",
  { data_type => "decimal", is_nullable => 1, size => [11, 2] },
  "salesorderitemupc",
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
