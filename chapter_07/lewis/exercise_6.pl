#!/usr/bin/perl

use strict;
use warnings;

while(<>) {
	if( $_ =~ /(\bfred\b.*\bwilma\b)|(\bwilma\b.*\bfred\b)/ ) {
		print $_;
	}
}