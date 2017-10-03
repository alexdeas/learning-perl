#!/usr/bin/perl
use v5.10;
use strict;
use warnings;

while (<>) {
  chomp;
  if (/\w+(?<name>a\b)/) {
    print "'$`$&' ends with $+{name}\n";
  }
}
