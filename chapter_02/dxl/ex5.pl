#!/usr/bin/perl
use warnings;

$pi = 3.141592654;

print "Enter two numbers:\n";
chomp($string = <STDIN>);
chomp($number = <STDIN>);

print "Here is the output: " . $string x $number . ".\n";