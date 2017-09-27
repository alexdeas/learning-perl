#!/usr/bin/perl

use strict;
use warnings;

while(<>) {
	if( $_ =~ /(\S)\1/ ) {
		print $_;
	}
}