#!/usr/bin/perl
use strict;
use v5.10;

my @fred_friends =  qw \Mississippi Bamm-Bamm llama fred alfred freddie wilma\;

print "input is: @fred_friends \n";
print "expected output: Mississippi, Bamm-Bamm, llama, freddie\n";
foreach (@fred_friends) {
	if (/(.)\1/) {
		print ;
		print "\n";
	}
}
