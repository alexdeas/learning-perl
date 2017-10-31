#!/usr/bin/perl
use warnings;
use strict;

# expects a list of filenames to stat
my @filenames = @ARGV;

# list only file(s) which are read/write and owned by user
# does nothing if none found
foreach my $filename (@filenames) {
	if ( -O -w -r $filename ) {
		print "$filename is readable/writable and owned by you!\n";
	}
}
