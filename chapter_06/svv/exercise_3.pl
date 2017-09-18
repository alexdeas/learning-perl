#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my %my_env = %ENV;

my $longest_key = 0;
foreach my $key (sort keys %my_env) {
    if(length $key > $longest_key) {
        $longest_key = length $key;
    }
}

foreach my $key (sort keys %my_env) {
    printf "%*s %0s\n", -$longest_key, $key, $my_env{$key};
}
