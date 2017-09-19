#!/usr/bin/perl
use strict;
use warnings;

my %last_name = (
  'fred'   => 'flintstone',
  'barney' => 'rubble',
  'wilma'  => 'flintstone',
  'betty'  => undef,
);

print "Enter the given name: ";
chomp(my $given_name = <STDIN>);

if ((exists $last_name{$given_name}) && (defined $last_name{$given_name})) {
  print "Family name of $given_name is $last_name{$given_name}\n";
}
else {
  print "Can't find family name for $given_name\n";
}
