#!/usr/bin/perl
use v5.10;
use strict;
use warnings;

while (<>) {
  chomp;
  if (/\w+(?<name>a\b)(?<after>.{0,5})/) {
    print "Stuff after '$&' is '$+{after}'\n";
  }
}
