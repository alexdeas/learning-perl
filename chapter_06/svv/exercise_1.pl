#!/usr/bin/perl
use strict;
use warnings;
use autodie;
use feature qw(say);

my %family_name;
$family_name{'fred'} = 'flintstone';
$family_name{'barney'} = 'rubble';
$family_name{'wilma'} = 'flintstone';

while(<STDIN>) {
    chomp;
    my $last_name = $family_name{$_};
    say defined $last_name ? $last_name : "Who?\n";
}


# $ perl exercise_1.pl
# wilma
# flintstone
# john
# Who?
