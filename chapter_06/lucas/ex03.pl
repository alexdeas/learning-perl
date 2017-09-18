#!/usr/bin/perl
use utf8;

foreach $k (sort(keys %ENV)) {
	print "key: $k, \t\t\t value: $ENV{$k} \n";
	print "---------------------------------------------------------------------------\n";
}