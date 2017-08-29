#!/usr/bin/perl
use warnings;

$pi = 3.141592654;

print "Enter the radius: ";
chomp($radius = <STDIN>);

$circumference = 2 * $pi * $radius;

print "The circumference measures $circumference.\n";