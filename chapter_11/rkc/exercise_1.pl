#!/usr/bin/perl
use warnings;
use strict;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.024} };

while ( my ( $key, $value ) = each %modules ) {
	print "$key => " . ( $value // '(no version defined)' ) . "\n";
}
