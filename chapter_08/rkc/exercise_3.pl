#!/usr/bin/perl
use warnings;
use strict;

while (<>) {    # take one input line at a time
	chomp;
	if (/\b(\w*a)\b/) {
		print '$1' . " contains '$1'\n";
	}
	else {
		print "No match: |$_|\n";
	}
}
