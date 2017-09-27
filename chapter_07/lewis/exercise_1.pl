#!/usr/bin/perl

use strict;
use warnings;

while(<>) {
	if( $_ =~ /\bfred\b/ ) {
		print $_;
	}
}