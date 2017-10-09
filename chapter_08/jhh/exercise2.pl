#!/usr/bin/perl
use strict;
use warnings;

while (<>) {
  chomp;
  if (/\w+a\b/) {
    print "Matched: |$`<$&>$'|\n";  # the special match vars
  } else {
    print "No match: |$_|\n";
  }
}
