#!/usr/bin/perl
use strict;
use warnings;

my @lines;
my $width;
print "Enter the width:";
chomp ($width = <STDIN>);

print "Enter some lines:\n";

chomp (@lines = <STDIN>);

print "1234567890"x6 ."\n";
foreach (@lines) {
  printf "%${width}s\n", $_;
}
