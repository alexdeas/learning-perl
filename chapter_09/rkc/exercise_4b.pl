#!/usr/bin/perl
use warnings;
use strict;

my $COPYRIGHT_LINE = "## Copyright (C) 2017 by Yours Truly\n";
my %all_processed_files;           # all files in @ARGV
my %files_containing_copyright;    # all files in @ARGV that already have a copyright header

# first find files with the copyright message already present
# easiest way I could think of to keep files as a set was to use a hash
while (<>) {
	$all_processed_files{$ARGV} = 1;
	$files_containing_copyright{$ARGV} = 1 if /## Copyright/;
}

# auto-copy original file if we're making changes to a backup file
$^I = ".bak";
my @all_processed_files        = keys %all_processed_files;
my @files_containing_copyright = keys %files_containing_copyright;

# only process those files which don't hold a copyright yet
# this avoids altering the file if we're not making changes (or creating a superfluous backup)
@ARGV = array_diff( \@all_processed_files, \@files_containing_copyright );

# only process these files to avoid modifying the original files
# if we're not making any changes
if ( scalar @ARGV ) {
	while (<>) {
		print;

		# add the following after any line that starts with #!/usr/bin/perl
		if (m|\A#!/usr/bin/perl|) {
			print "## Copyright (C) 2017 by Yours Truly\n";
		}
	}
}

# accepts 2 arrays ($a, $b) and returns an array containing the contents of array $a minus $b
# (ie. all elements of $a less all elements of $b)
sub array_diff {
	my ( $a, $b ) = @_;
	my @result = ();

  OUTER: foreach my $outer (@$a) {
	  INNER: foreach my $inner (@$b) {
			next OUTER if $outer eq $inner;
		}
		push @result, $outer;
	}
	return @result;
}
