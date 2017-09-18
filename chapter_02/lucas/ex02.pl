#!/usr/bin/perl
use utf8;


$pi = 3.141592;

print "what is the radius? ";

chomp($radius = <STDIN>);

$circumference = (2 * $pi) *  $radius;

print "the circumference is $circumference";