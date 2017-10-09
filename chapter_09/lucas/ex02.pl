#!/usr/bin/perl -w
use strict;
use warnings;
#input: fred03.dat
$^I = ".bak";

while (<>) {
  s/fred/Larry/ig;
  print;
}