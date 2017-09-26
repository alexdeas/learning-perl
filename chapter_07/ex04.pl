#!/usr/bin/perl
use strict;
use v5.10;

my @fred_friends =  ("fred", "alfred", "freddie", "Mr. Slate", "Freddie", "freDdie", "FreDDie");

print "input is: @fred_friends \n";
print "expected output: Mr. Slate, Freddie, freDdie\n";
foreach (@fred_friends) {
	
	if (/\b[a-z]*[A-Z]{1}[a-z]*\b/) {
		print ;
		print "\n";
	}
}
