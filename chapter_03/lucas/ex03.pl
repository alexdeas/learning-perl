#!/usr/bin/perl
use utf8;

#@names = qw(fred betty barney dino wilma pebbles bamm-bamm);

#print " list of names: @names \n";

print "please enter a list of names. terminate line input with ctrl+z and enter: ";
@names = <STDIN>;
print "\n\n";
foreach $name (@names) {
  print "$name";
}
print "\n\n";
@nxames = chomp(@names);
foreach $name (@names) {
  print "$name ";
}
print "\n\n";
