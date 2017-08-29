#!/usr/bin/perl

print "Enter a string: ";
$str = <STDIN>;
print "Enter number of time to print: ";
chomp( $num = <STDIN> );

print $str x $num;
