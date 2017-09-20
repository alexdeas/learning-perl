#!/usr/bin/perl
use warnings;
use strict;

while( <STDIN> ) {
	if( /[Ff]red/ ) {
		print $_;
	}
}
