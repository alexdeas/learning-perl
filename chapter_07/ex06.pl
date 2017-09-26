#!/usr/bin/perl
use strict;
use v5.10;

my @fred_friends =  ("fred", "alfred", "wilma and fred", "wilma",  "fred and wilma", "hi fred and wilma", ,  "freddie and wilmanina");

print "input is: @fred_friends \n";
print "expected output: wilma and fred, fred and wilma, hi fred and wilma\n";
foreach (@fred_friends) {
	
	if (/\bwilma\b.*\bfred\b|\bfred\b.*\bwilma\b/) {
		print ;
		print "\n";
	}
}
