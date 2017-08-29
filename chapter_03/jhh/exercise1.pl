#!/usr/bin/perl
use warnings;

print "Enter some strings:";
@lines = <STDIN>;
@reversed = reverse @lines;
print @reversed;