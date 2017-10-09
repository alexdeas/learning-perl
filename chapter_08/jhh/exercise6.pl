#!/usr/bin/perl
use strict;
use warnings;

while (<>) {
  chomp;
  if (/\s$/) {
    print "'$`$&' ends with a whitespace.\n";
  } else {
    print "No whitespace ending\n";
  }
}
