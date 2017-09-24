#!/usr/bin/perl
my @lines = <>;

foreach (@lines) {
  if (/[fF]red/) {
    print $_;
  }
}
