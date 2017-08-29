#!/usr/bin/perl
use warnings;

@names = qw(fred betty barney dino wilma pebbles bamm-bamm);

# @lines contains 1-based index from our list of names, one on each line
chomp( @lines = <STDIN> );

foreach $i (@lines) {
	if ( defined $names[ $i - 1 ] ) {
		print $names[ $i - 1 ], "\n";
	}
}

1;
