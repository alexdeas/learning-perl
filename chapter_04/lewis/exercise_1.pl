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

my $user_total = total( qw{1 2 3 4} );
print "The total of those numbers is $user_total.\n";