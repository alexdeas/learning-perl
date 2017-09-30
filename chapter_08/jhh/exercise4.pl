#!/usr/bin/perl
use v5.10;
use strict;
use warnings;

my $names = 'Fred or Barney';
if ( $names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/ ) {
  say "I saw $+{name1} and $+{name2}";
  }


while (<>) {
  chomp;
  if (/\w+(?<name>a)$/) {
    print "$+{name} contains '$`$&'\n";
  }
}
