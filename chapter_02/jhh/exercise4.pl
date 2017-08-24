#!/usr/bin/perl

print "Enter first number: ";
chomp( $first = <STDIN> );
print "Enter second number: ";
chomp( $second = <STDIN> );

print "The product of $first and $second is " . ( $first * $second ) . "\n";
