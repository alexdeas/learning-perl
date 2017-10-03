#!/usr/bin/perl
use strict;
use v5.10;

while (<>) {           # take one input line at a time
  chomp;
  if (/\w+a\b/) {
    print "Matched: |$`<$&>$'|\n";  # the special match vars
  } else {
    print "No match: |$_|\n";
  }
}