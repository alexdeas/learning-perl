#!/usr/bin/perl

use strict;
use warnings;

print "123456789012345678901234567890123456789012345678901234567890\n";
while(my $line = <STDIN>) {
	printf( "%20s", $line );
}