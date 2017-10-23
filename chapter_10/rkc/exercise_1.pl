#!/usr/bin/perl
use warnings;
use strict;

my $secret_number = int( 1 + rand 100 );

while (<>) {
	chomp;

	if (/^(quit|exit)*$/i) {
		last;
	}
	elsif ( not /^[0-9]+$/ ) {
		print "Please enter an integer.\n";
	}
	elsif ( $_ > $secret_number ) {
		print "Too high.\n";
	}
	elsif ( $_ < $secret_number ) {
		print "Too low.\n";
	}
	else {
		print "Just right.\n";
		last;
	}
}
