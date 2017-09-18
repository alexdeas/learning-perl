#!/usr/bin/perl
use utf8;

#@names = qw(fred betty barney dino wilma pebbles bamm-bamm);

#print " list of names: @names \n";

print "please enter a list of names. terminate line input with ctrl+z and enter: ";
@names = <STDIN>;
@sorted  = sort(@names);
print "\n\n";
print "names alphabetially ordered, one on each line: \n";
foreach $name (@sorted) {
  print "$name";
}
print "\n\n";
chomp(@sorted);

foreach $name (@sorted) {
  print "$name ";
}
print "\n\n";
