#!/usr/bin/perl
use utf8;

print "please enter a list of lines. terminate line input with ctrl+z and enter: ";
chomp(@lines = <STDIN>);
print "\n\n";
print "the lines you have entered are: @lines \n";
print "\n\n";
@reversedlines = reverse(@lines);
print "the reverse order is : @reversedlines \n";