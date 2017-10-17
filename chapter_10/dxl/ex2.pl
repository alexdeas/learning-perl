#!/usr/bin/perl -w
use strict;
use warnings;

use Getopt::Long;

my $debug_mode = 1;

# Any number that is not 0 will be treated as 1 because of how 
# Perl handles the number->boolean conversion
GetOptions ("debug=i"  => \$debug_mode)
or die("Error in command line arguments\n");

# How about an unless with a negated condition? lol 
print "Debug mode is active\n" unless !$debug_mode;

my $number = int(1 + rand 100);

# Helping Perl looking ugly (on the wild assumption it actually needs help...)
# with a postponed "if"
print "The secret number is $number\n" if $debug_mode;

while (1) {
  print "Try and guess by entering a number between 1 and 100 (included): ";
  my $attempt = <STDIN>;
  chomp($attempt);
  if ($attempt =~ /exit|quit|^\s*$/i) {
    # Another ugly unless; we don't need to print this again, you've known
    # the number from the beginning!
    print "The number you didn't guess was $number\n" unless $debug_mode;
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
