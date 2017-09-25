#!/usr/bin/perl

use strict;
use warnings;

while(<>) {
	if( $_ =~ /\b[A-Z][^A-Z\ ]*\b/ ) {
		print $_;
	}
}