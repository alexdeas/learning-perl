#!/usr/bin/perl

use strict;
use warnings;

foreach my $file (@ARGV) {
	open( FILE, "<$file" );
	my @lines = reverse( <FILE> );
	print "@lines";
	close( FILE );
}