#!/usr/bin/perl
use strict;
use warnings;

my $temp = 'XXXX';

$^I = ".bak";
while (<>) {
  my $line = $_;
  $line =~ s/fred/$temp/ig;
  $line =~ s/wilma/Fred/ig;
  $line =~ s/$temp/Wilma/ig;
  print $line;
}
