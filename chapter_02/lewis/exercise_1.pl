###
# (C) 2017 Lewis Maitland
# O'Reily Excersises
###

use strict;
use warnings;
use Math::Trig ':pi';

my $radius = $#ARGV == 0 ? $ARGV[0] : 12.5;

if( $radius !~ /^[0-9]+(\.[0-9]+)?$/ ) {
	print "Invalid radius supplied.\n";
	exit 0;
}

my $circumference = 2 * pi * $radius;
print "Using a radius of $radius i calculated the circumference to be $circumference.\n";