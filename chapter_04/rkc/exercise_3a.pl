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

# Takes a list of numbers and returns the average of them
sub just_average {
	my (@numbers) = @_;
	my $subtotal = total(@numbers);
	return scalar(@numbers) == 0 ? 0 : $subtotal / scalar(@numbers);
}

# Takes a list of numbers and returns a list of numbers that
# are above the average value for the list
sub above_average {
	my (@numbers) = @_;
	my $average = just_average(@numbers);
	my @matched_nums = ();
	foreach $num (@numbers) {
		if( $num > $average ) {
			push @matched_nums, $num;
		}
	}
	return @matched_nums;
}

# sample program; copied verbatim from exercise
my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";