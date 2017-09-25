#!/usr/bin/perl
use warnings;
use strict;

# @lines contains our list of names, one on each line
my @lines;
chomp( @lines = <STDIN> );

# create a hash for each name and the total number of occurrences
my %occurrences;
foreach my $i (@lines) {
	$occurrences{$i}++;
}

# print in sorted name order
foreach my $name (sort keys %occurrences) {
	print "$name => $occurrences{$name}\n";
}
