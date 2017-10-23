#!/usr/bin/perl
use strict;
use warnings;

my $number = int(1 + rand 100);

while (1) {
  print "Try and guess by entering a number between 1 and 100 (included): ";
  my $attempt = <STDIN>;
  chomp($attempt);
  if ($attempt =~ /exit|quit|^\s*$/i) {
    print "The number you didn't guess was $number\n";
    last;
  }
  elsif ($attempt < $number) {
    print "Fail! Hint: this number is too small\n";
  }
  elsif ($attempt == $number) {
    print "Well done!\n";
    last;
  }
  else {
    print "Fail! Hint: this number is too large\n";
  }
}
