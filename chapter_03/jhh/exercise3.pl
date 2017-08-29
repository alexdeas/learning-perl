#!/usr/bin/perl
use warnings;

print "Enter some names to sort:";
@names = <STDIN>;
@sorted = sort @names;


print "Names on new lines\n @sorted";

print "Names on one line: ";
foreach $name(@sorted) {
  chomp $name;
  print "" . $name . " ";
}

