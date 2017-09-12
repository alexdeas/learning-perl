#!/usr/bin/perl

use strict;
use warnings;

foreach my $file (@ARGV) {

	open( FILE, "<$file" );

	my @lines = reverse( <FILE> );
	foreach my $line (@lines) {
		print $line;
	}

	close( FILE );
}