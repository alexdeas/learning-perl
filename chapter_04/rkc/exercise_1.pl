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

# sample program; copied verbatim from exercise
my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";
