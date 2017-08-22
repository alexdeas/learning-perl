#!/usr/bin/perl

print "Enter the radius, then enter: ";
chomp( $radius = <STDIN> );
$pi = 3.141592654;

print "The circumference of a circle with $radius is " . ( 2 * $pi * $radius ) . "\n";
