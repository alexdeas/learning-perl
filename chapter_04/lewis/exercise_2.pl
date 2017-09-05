#!/usr/bin/perl

use strict;
use warnings;

sub total {
	my $total = 0;
	foreach(@_) {
		$total += $_;
	}
	$total;
}

my $range_total = total( 1..1000 );
print "The total of the range 1 to 1000 is $range_total.\n";