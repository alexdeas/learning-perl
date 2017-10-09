#!/usr/bin/perl
use strict;
use warnings;

my $what = 'fred|barney';

while (<>) {         
  chomp;
	print "input: '$_'\n";
	if( /($what){3}/ ) {
		print "fred (or barney) appears three times\n";
	}else {
		print "no match\n";
	}
  }