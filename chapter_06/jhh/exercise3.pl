#!/usr/bin/perl
use strict;
use warnings;

my $max_len = 0;
foreach (sort keys %ENV) {
  my $curr_len = length $_;
  if ($curr_len > $max_len) {
    $max_len = $curr_len;
  }
}

print "Environment variables:\n";
foreach (sort keys %ENV) {
  printf "%-${max_len}s: %s\n", $_, $ENV{$_};
}
