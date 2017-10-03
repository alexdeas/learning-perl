#!/usr/bin/perl
while (<>) {
	chomp;
	if( /\s$/ ) {
		print "$_|\n";  # the special match vars
	}
}