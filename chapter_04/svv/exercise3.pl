use strict;
use warnings;

require "total.pl";

sub above_average {

    my @numbers;
    my $total = &total(@_);
    my $num_items = scalar @_;
    my $average = $total / $num_items;

    foreach my $number(@_) {

        if ($number > $average) {
            push @numbers, $number;
        }
    }

    return @numbers;
}


my @fred = &above_average(1 .. 10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1 .. 10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";



# $ perl exercise3.pl
# @fred is 6 7 8 9 10
# (Should be 6 7 8 9 10)
# @barney is 100
# (Should be just 100)
