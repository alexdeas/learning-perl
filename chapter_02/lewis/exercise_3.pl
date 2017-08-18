###
# (C) 2017 Lewis Maitland
# O'Reily Excersises
###

use strict;
use warnings;

use constant TITLE => " MULTIPLICATOR v1.01 ";

my $first;
my $second;

print '-' x 10, TITLE, '-' x 10, "\n";

print "Enter first number: ";
chomp ($first = <STDIN>);

print "Enter second number: ";
chomp ($second = <STDIN>);

if( $first !~ /^[0-9]+$/ || $second !~ /^[0-9]$/ ) {
	print "You have supplied invalid integers, i cannot do calculation.\n";
} else {
	print "Result: @{[$first * $second]}\n";
}

print '-' x 10, '-' x length(TITLE), '-' x 10;