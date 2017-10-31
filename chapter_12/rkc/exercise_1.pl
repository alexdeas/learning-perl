#!/usr/bin/perl
use warnings;
use strict;

## This script has a different behaviour between unix shell and windows
## In Unix, expanding wildcards is done prior to giving them over to the command being run
## In Windows, they thought that each program should have to do that itself
## In other words, wildcard expansion does not work in Windows

# expects a list of filenames to stat
my @filenames = @ARGV;

foreach my $filename (@filenames) {
	if ( -e $filename ) {
		my $attrib = file_attrib();

		# chmod 0 filename will have no attributes
		print "$filename exists with "
		  . ( length($attrib) ? "attributes $attrib" : "no attributes" ) . "\n";
	}
	else {
		print "$filename does not exist\n";
	}
}

# Returns a string with the rwx attributes for
# the last 'stat' file operation
sub file_attrib {
	my $attrib = '';
	if ( -r _ ) {
		$attrib .= 'r';
	}
	if ( -w _ ) {
		$attrib .= 'w';
	}
	if ( -x _ ) {
		$attrib .= 'x';
	}
	return $attrib;
}
