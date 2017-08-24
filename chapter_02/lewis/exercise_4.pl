###
# (C) 2017 Lewis Maitland
# O'Reily Excersises
###

use strict;
use warnings;

use constant TITLE => " STRINGLICATOR v1.01 ";

my $string;
my $multiply;

print '-' x 10, TITLE, '-' x 10, "\n";

print "Enter string to multiply: ";
chomp ($string = <STDIN>);

print "Enter number of multiplications: ";
chomp ($multiply = <STDIN>);

if( $multiply !~ /^[0-9]$/ ) {
	print "You have supplied an invalid integer for multiply.\n";
} else {
	print "$string\n" x $multiply;
}

print '-' x 10, '-' x length(TITLE), '-' x 10;