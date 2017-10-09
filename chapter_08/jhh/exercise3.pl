#!/usr/bin/perl
use strict;
use warnings;

while (<>) {
  chomp;
  if (/\w+(a\b)/) {
    print "'$`$&' ends with $1\n";
  }
}
