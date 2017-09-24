#!/usr/bin/perl
my @lines = <>;

foreach (@lines) {
  if (/wilma/ && /fred/) {
    print $_;
  }
}
