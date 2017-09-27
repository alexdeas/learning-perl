#!/usr/bin/perl
use warnings;
use strict;

while( <STDIN> ) {
	# "word that is capitalized" (ie. first letter CAPITAL) but not all CAPS
	if( /\b[A-Z][a-z]+\b/ ) {
		print $_;
	}
}
