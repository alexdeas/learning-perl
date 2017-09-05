#!/usr/bin/perl
use warnings;

# Takes a list of numbers and returns their sum
sub total {
	my (@numbers) = @_;
	my $subtotal = 0;
	foreach $num (@numbers) {
		$subtotal += $num;
	}
	return $subtotal;
}

my $subtotal = total(1..1000);
print "The total of the numbers 1 to 1000 is $subtotal.\n";
