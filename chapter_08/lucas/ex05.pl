#!/usr/bin/perl
use strict;
use v5.10;

while (<>) {           # take one input line at a time
  chomp;
  if (/(?<word>\w+a\b) 
       (?<word_after>.{0,5})/x) {
	print  "$+{word} contains 'Wilma'\n";
	print "second match: $+{word_after}\n";
    print "Matched: |$`<$&>$'|\n";  # the special match vars
	
  } else {
    print "No match: |$_|\n";
  }
}