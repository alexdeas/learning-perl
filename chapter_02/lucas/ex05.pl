#!/usr/bin/perl
use utf8;

print "enter name you wish to have printed \n";
$string_to_display=<STDIN>;
print "enter number of times you wish $string_to_display to have printed: \n";

chomp($number_of_times_string_will_be_displayed=<STDIN>);

print $string_to_display x $number_of_times_string_will_be_displayed;