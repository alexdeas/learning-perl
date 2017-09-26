#!/usr/bin/perl

use strict;
use warnings;

while(<>) {
	if( $_ =~ /\b[fF]red\b/ ) {
		print $_;
	}
}