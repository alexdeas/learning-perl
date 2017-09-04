#!/usr/bin/perl
use warnings;

@names = qw(fred betty barney dino wilma pebbles "bamm-bamm");
print "Enter some entries to print out:";
chomp(@numbers = <STDIN>);
foreach $number(@numbers) {
  print $names[$number-1] . " ";
}
