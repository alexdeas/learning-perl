#!/usr/bin/perl
use warnings;

$pi = 3.141592654;

print "Enter the radius: ";
chomp($radius = <STDIN>);

$circumference = 2 * $pi * $radius;

if ($radius < 0) {
  # Distances are positive semi-definite by definition!
  $circumference = 0;
}
print "The circumference measures $circumference.\n";