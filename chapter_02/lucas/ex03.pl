#!/usr/bin/perl
use utf8;


print "what is the radius? ";

chomp($radius = <STDIN>);

if ( $radius < 0 ) {
	$radius = 0;
}
$pi = 3.141592;
$circumference = (2 * $pi) *  $radius;

print "the circumference is $circumference";