use utf8;
package QBPOS::Schema::Result::CustomField;

=head1 NAME

QBPOS::Schema::Result::CustomField - Insert Only Custom Field Table

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<CustomField>

=cut

__PACKAGE__->table("CustomField");

=head1 ACCESSORS

=head2 ownerid

  data_type: 'varchar'
  is_nullable: 0
  size: [50,0]

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: [31,0]

=head2 entitytype

  data_type: 'varchar'
  is_nullable: 1
  size: [23,0]

=head2 entityreflistid

  data_type: 'varchar'
  is_nullable: 1
  size: [36,0]

=head2 othertype

  data_type: 'varchar'
  is_nullable: 1
  size: [7,0]

=head2 value

  data_type: 'varchar'
  is_nullable: 1
  size: [4095,0]

=cut

__PACKAGE__->add_columns(
  "ownerid",
  { data_type => "varchar", is_nullable => 0, size => [50, 0] },
  "name",
  { data_type => "varchar", is_nullable => 1, size => [31, 0] },
  "entitytype",
  { data_type => "varchar", is_nullable => 1, size => [23, 0] },
  "entityreflistid",
  { data_type => "varchar", is_nullable => 1, size => [36, 0] },
  "othertype",
  { data_type => "varchar", is_nullable => 1, size => [7, 0] },
  "value",
  { data_type => "varchar", is_nullable => 1, size => [4095, 0] },
);

=head1 PRIMARY KEY

=over 4

=item * L</ownerid>

=back

=cut

__PACKAGE__->set_primary_key("ownerid");

1;

