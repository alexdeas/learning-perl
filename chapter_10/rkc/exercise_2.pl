#!/usr/bin/perl
use warnings;
use strict;

my $debug_enabled = $ENV{DEBUG} // 0;
my $secret_number = int( 1 + rand 100 );
print "Chose $secret_number.\n" if $debug_enabled;

while (<>) {
	chomp;

    print "User input: $_\n" if $debug_enabled;
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
