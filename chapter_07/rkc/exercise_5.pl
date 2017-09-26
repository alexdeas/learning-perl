#!/usr/bin/perl
use warnings;
use strict;

while( <STDIN> ) {
	# match two of the same nonwhitespace characters next to each other
	if( /(\S)\g{-1}/ ) {
		print $_;
	}
}
