#!/usr/bin/perl
my @lines = <>;

foreach (@lines) {
  if (/fred/) {
    print $_;
  }
}
