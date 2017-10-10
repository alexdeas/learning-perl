#!/usr/bin/perl
use strict;
use warnings;

my $what = 'fred';

while (<>) {
  chomp;
  if (/($what){3}/) {
    print "Matched 3 times\n";
  } else {
    print "Didn't match\n";
  }
}
