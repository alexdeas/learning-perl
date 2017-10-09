#!/usr/bin/perl
my @lines = <>;

foreach (@lines) {
  if (/(.)\1/) {
    print $_;
  }
}
