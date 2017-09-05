use strict;
use warnings;

sub total {

    my $sum;

    foreach my $number(@_) {
        $sum += $number;
    }

    return $sum;
}


1;
