#!/usr/bin/perl
use warnings;

chomp(@lines = <STDIN>);

@lines = sort(@lines);

print join ",", @lines;
print "\n-----\n";
print join "\n", @lines;
