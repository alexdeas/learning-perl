#!/usr/bin/perl
use strict;
use warnings;


$^I = ".bak";
while (<>) {
  my $line = $_;
  $line =~ s/fred/Larry/ig;
  print $line;
}
