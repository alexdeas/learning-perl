#!/usr/bin/perl
use v5.10;
use strict;
use warnings;

foreach my $k (sort (keys %ENV) ) {
	print "key: $k \t\t\t ";#value: $ENV{$k} \n";
	my $value = $ENV{$k}  // 'default';
    print "value: $value\n";
	print "---------------------------------------------------------------------------\n";
}