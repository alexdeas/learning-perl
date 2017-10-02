#!/usr/bin/perl
my @lines = <>;

foreach (@lines) {
  if (/\./) {
    print $_;
  }
}
