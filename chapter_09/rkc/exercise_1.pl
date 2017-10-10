#!/usr/bin/perl
use warnings;
use strict;

my $what = 'fred|barney';

while (<>) {
	chomp;
	
	# match 3 of whatever is in $what
	if (/(?:$what){3}/) {
		print "Match.\n";
	}
	else {
		print "No match.\n";
	}
}
