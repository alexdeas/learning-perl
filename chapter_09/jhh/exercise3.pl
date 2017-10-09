#!/usr/bin/perl
use strict;
use warnings;

my $temp = 'XXXX';
my $out_fh;
my $out_filename = "exercise3.out";
if (! open $out_fh, '>', $out_filename ) {
  die "Can't write '$out_filename': $!";
}

while (<>) {
  my $line = $_;
  $line =~ s/fred/$temp/ig;
  $line =~ s/wilma/Fred/ig;
  $line =~ s/$temp/Wilma/ig;
  print $out_fh $line;
}
close $out_fh;
