#!/usr/bin/perl -w
use strict;
use warnings;
#input: textFile.txt
while (<>) {
  chomp;
  print "input: $_\n";
  my $output = $_ =~ s/(?:.*?)(fred|wilma)+(.*?)(fred|wilma)+(?:.*?)/\u$3$2\u$1/igr;
  print "output $output\n";
}