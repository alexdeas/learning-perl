#!/usr/bin/perl
use warnings;
use strict;

while( <STDIN> ) {
	if( /fred/ ) {
		print $_;
	}
}
