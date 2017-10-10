#!/usr/bin/perl
use warnings;
use strict;

# expects a list of filenames to be transformed
my @filenames = @ARGV;

# at least one command-line argument provided
if ( scalar @filenames > 0 ) {

	# iterate over all files
	foreach my $file (@filenames) {

		# if an invalid file is specified, this shouldn't stop the program
		if ( !open INFILE, '<', $file ) {
			warn "Unable to open file $file";
			next;    # continue with next file
		}
		if ( !open OUTFILE, '>', $file . ".out" ) {
			warn "Unable to open file $file";
			next;    # continue with next file
		}

		# read from INFILE writing transformed contents to OUTFILE
		while (<INFILE>) {
			print OUTFILE transform_text($_);
		}
		close INFILE;
		close OUTFILE;
	}
}

# otherwise, do operations on STDIN
else {
	while (<>) {
		print transform_text($_);
	}
}

# accepts an input string and returns the transformed string
sub transform_text {
	my ($line) = @_;
	my $transformed_line;

	# match fred or wilma and replace each match from left to right
	while ( $line =~ /fred|wilma/i ) {
		$transformed_line .= $` . ( lc($&) eq "fred" ? "Wilma" : "Fred" );
		$line = $';    # set $line to remainder of unmatched line
	}
	$transformed_line .= $line;
	return $transformed_line;
}
