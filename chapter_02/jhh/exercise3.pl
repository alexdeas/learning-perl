#!/usr/bin/perl

print "Enter the radius, then enter: ";
chomp( $radius = <STDIN> );
$pi = 3.141592654;

$value = $radius;
if ( $radius < 0 ) {
  $value = 0;
}
print "The circumferance of a circle with $radius is " . ( 2 * $pi * $value ) . "\n";
