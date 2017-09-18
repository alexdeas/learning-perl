#!/usr/bin/perl
use warnings;
use strict;

# find the maximum key length for the given input hash
sub key_max_length {
	my %hash = @_;
	my $max_length = 0;
	foreach my $key (keys %hash) {
		my $current_length = length($key);
		if( $current_length > $max_length ) {
			$max_length = $current_length;
		}
	}
	return $max_length;
}

# print %ENV in sorted name order
my $left_column_length = key_max_length(%ENV);
foreach my $name (sort keys %ENV) {
	my $padding = " " x ($left_column_length - length($name));
	print "$name$padding => $ENV{$name}\n";
}
