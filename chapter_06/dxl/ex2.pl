#!/usr/bin/perl
use strict;
use warnings;

my %names = ();

while (<STDIN>) { # or possibly @words = <STDIN> instead
  chomp($_);
  $names{$_}++;
}

foreach my $key (sort keys %names) {
  print "$key => $names{$key}\n";
}
