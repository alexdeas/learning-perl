#!/usr/bin/perl
use utf8;

@names = qw(fred betty barney dino wilma pebbles bamm-bamm);

print " list of names: @names \n";

print "please enter a set of numbers, ranging 1-7 (on separate lines). terminate line input with ctrl+z and enter: ";
chomp(@nameIndexes = <STDIN>);
print "\n\n";
foreach $index (@nameIndexes) {
  print "$names[$index -1] ";
}
print "\n\n";
