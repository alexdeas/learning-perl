#!/usr/bin/perl
use utf8;
use open ':std', ':encoding(UTF-8)';

$radius = 12.5;
$circumference = (2 * 3.141592) *  $radius;

print "the circumference is $circumference";