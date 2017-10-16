#!/usr/bin/perl
use warnings;
use strict;

# find the maximum key length for the given input hash
sub key_max_length {
	my %hash       = @_;
	my $max_length = 0;
	foreach my $key ( keys %hash ) {
		my $current_length = length($key);
		if ( $current_length > $max_length ) {
			$max_length = $current_length;
		}
	}
	return $max_length;
}

# print %ENV in sorted name order
my $left_column_length = key_max_length(%ENV);
foreach my $name ( sort keys %ENV ) {

	# not sure how to use the // operator to do this
	# an environment variable with no value would return "" not undef???
	printf "%${left_column_length}s => %s\n", $name,
	  $ENV{$name} eq "" ? "(undefined value)" : $ENV{$name};
}
