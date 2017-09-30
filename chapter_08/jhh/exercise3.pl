#!/usr/bin/perl
use strict;
use warnings;

while (<>) {
  chomp;
  if (/\w+(a)$/) {
    print "'$`$&' ends with $1\n";
  }
}
