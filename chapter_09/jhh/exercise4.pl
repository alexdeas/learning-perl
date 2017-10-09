#!/usr/bin/perl
use strict;
use warnings;

my $has_copyright = 0;
my $copyright_string = "## Copyright (C) 20XX by Yours Truly";
my @lines;
my $line;

my $filename = $ARGV[0];
while (<>) {
  $line = $_;
  if (/\Q$copyright_string/) {
      $has_copyright = 1;
  }
  push @lines, $line;
}

if (!$has_copyright) {
  print "File does not contain copyright.\n";
  my $out_fh1;
  my $out_orig = "$filename";
  if (! open $out_fh1, '>', $out_orig ) {
    die "Can't write '$out_orig': $!";
  }

  my $out_fh2;
  my $out_bak = "$filename.bak";
  if (! open $out_fh2, '>', $out_bak ) {
    die "Can't write '$out_bak': $!";
  }

  foreach $line (@lines) {
    print $out_fh2 $line;
    if ($line =~ /^#!/) {
      $line .= $copyright_string . "\n";
    }
    print $out_fh1 $line;
  }
  close $out_fh1;
  close $out_fh2;
} else {
  print "File already contains copyright.\n";
}
