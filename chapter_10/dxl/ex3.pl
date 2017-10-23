#!/usr/bin/perl
use strict;
use warnings;

my $max_length = 0;

foreach my $key ( keys %ENV ) {
  my $key_length = length($key);
  if ( $key_length > $max_length ) {
    $max_length = $key_length;
  }
}
$ENV{lol} = undef;
# There are better ways to format the output, but we don't care :) 
foreach my $key ( sort keys %ENV ) {
  my $value = $ENV{$key} // "not defined";
  print $key . " " x ($max_length - length($key)) . "| $value\n";
}
