#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

sub average {
	my $total = 0;
	foreach(@_) {
		$total += $_;
	}
	$total / @_;
}

sub above_average {
	my $average_ = average(@_);
	my @above_average_ = ();
	foreach(@_) {
		if( $_ > $average_ ) {
			push( @above_average_, $_ );
		}
	} 
	@above_average_;
}

print "Above average: ", join( ', ', above_average( 1.. 10 ) ), "\n";

sub greet {
	state $last;
	if( !defined $last ) {
		print "Hi $_[0]! You are the first one here!\n";
	} else {
		print "Hi $_[0]! $last is also here!\n";
	}
	$last = $_[0];
}

greet("Fred");
greet("Bob");