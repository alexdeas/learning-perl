#!/usr/bin/perl
use strict;
use warnings;

my %words = (
);

print "Enter some words: ";
chomp(my @lines = <STDIN>);

foreach (@lines) {
  $words{$_} += 1;
}

print "Word instance count:\n";
while ( my ($key, $value) = each %words) {
  print "$key appears $value times\n";
}

print "Sorted word instance count:\n";
foreach (sort keys %words) {
  print "$_ appears $words{$_} times\n";
}
