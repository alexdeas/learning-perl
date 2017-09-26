#!/usr/bin/perl
use warnings;
use strict;

while( <STDIN> ) {
	# match any line containing both wilma and fred
	if( /(\bwilma\b).*(\bfred\b)|(\bfred\b).*(\bwilma\b)/ ) {
		print $_;
	}
}
