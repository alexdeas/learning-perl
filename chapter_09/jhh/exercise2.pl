#!/usr/bin/perl
use strict;
use warnings;

my $out_fh;
my $out_filename = "exercise2.out";
if (! open $out_fh, '>', $out_filename ) {
  die "Can't write '$out_filename': $!";
}

while (<>) {
  my $line = $_;
  $line =~ s/fred/Larry/ig;
  print $out_fh $line;
}
close $out_fh;
