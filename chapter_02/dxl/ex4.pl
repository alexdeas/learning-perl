#!/usr/bin/perl
use warnings;

$pi = 3.141592654;

print "Enter two numbers:\n";
chomp($first = <STDIN>);
chomp($second = <STDIN>);

print "The product is " . $first*$second . ".\n";