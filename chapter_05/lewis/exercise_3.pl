#!/usr/bin/perl

use strict;
use warnings;
use Term::ReadKey;

print "123456789012345678901234567890123456789012345678901234567890\n";

while(my $line = <STDIN>) {
	my @values = split(',', $line);
	printf( "%".$values[0]."s", $values[1] );
}