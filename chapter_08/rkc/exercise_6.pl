#!/usr/bin/perl
use warnings;
use strict;

while( <> ) {
	chomp;
	if( /\s+\z/ ) { # match any whitespace at end of line
		print $_ . "#\n";
	}
}
