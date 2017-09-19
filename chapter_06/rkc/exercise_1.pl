#!/usr/bin/perl
use warnings;
use strict;

# Our knowledge base
my %person = (fred => 'flintstone', barney => 'rubble', wilma => 'flintstone');

# Takes a first name and returns the person's surname or undef if not found
sub lookup_surname {
	my ($name) = @_;
	return $person{$name};
}

print "Enter given name: ";
my $given_name;
chomp ($given_name = <STDIN>);

my $surname = lookup_surname( $given_name );
if( $surname ) {
	print "Family name is $surname\n";
}
else {
	print "I don't know anyone by that name.\n";
}
