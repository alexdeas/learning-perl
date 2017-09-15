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

foreach my $key ( sort keys %ENV ) {
  print $key . " " x ($max_length - length($key)) . "| $ENV{$key}\n";
}
