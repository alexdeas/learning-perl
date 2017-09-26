#!/usr/bin/perl
use strict;
use v5.10;

my @fred_friends = qw/ fred alfred freddie wilma Fred alFred Freddie wolma/;
print "input is: @fred_friends \n";
foreach (@fred_friends) {
	
	if (/[fF]red/) {
		print ;
		print "\n";
	}
}
