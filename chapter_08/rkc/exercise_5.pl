#!/usr/bin/perl
use warnings;
use strict;

while (<>) {    # take one input line at a time
	chomp;
	if (/\b(?<word>\w*a)\b(?<postfix>.{0,5})/) {
		print '$word' . " contains '$+{word}' and affixed with '$+{postfix}'\n";
	}
	else {
		print "No match: |$_|\n";
	}
}
