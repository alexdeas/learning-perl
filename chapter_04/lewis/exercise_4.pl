#!/usr/bin/perl

use v5.10;
use strict;
use warnings;

sub greet {
	state @last;
	if( @last == 0 ) {
		print "Hi $_[0]! You are the first one here!\n";
	} else {
		print "Hi $_[0]! I've seen: @last\n";
	}
	push( @last, $_[0] );
}

greet("Fred");
greet("Bob");
greet("Barney");
greet("Wilma");
greet("Betty");