#!/usr/bin/perl
use warnings;
use strict;
use Time::Moment;    # From Chapter 11

# expects a list of filenames to stat
my @filenames = @ARGV;

my $oldest_filename;
my $oldest_time;

# for all filenames given on the command line
foreach my $filename (@filenames) {
	my (
		$dev,  $ino,   $mode,  $nlink, $uid,     $gid, $rdev,
		$size, $atime, $mtime, $ctime, $blksize, $blocks
	) = stat($filename);

	# keep track of oldest file as long as the file exists
	# we want the one with the *earliest* timestamp
	if ( -e _ && ( ( not defined $oldest_time ) || $ctime < $oldest_time ) ) {
		$oldest_time     = $ctime;
		$oldest_filename = $filename;
	}
}

# returns no output if no file(s) found which exist
if ( defined $oldest_filename ) {
	print "Oldest file is $oldest_filename at "
	  . Time::Moment->from_epoch($oldest_time)->delta_days( Time::Moment->now )
	  . " days old\n";
}
