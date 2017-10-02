#!/usr/bin/perl
my @lines = <>;

foreach (@lines) {
  if (/[A-Z]/ & /[a-z]/) {
    print $_;
  }
}
