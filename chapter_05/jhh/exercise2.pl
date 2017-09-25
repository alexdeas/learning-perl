#!/usr/bin/perl
use strict;
use warnings;

print "Enter some lines:\n";

my @lines;
chomp (@lines = <STDIN>);

print "1234567890"x6 ."\n";
foreach (@lines) {
  printf "%20s\n", $_;
}
