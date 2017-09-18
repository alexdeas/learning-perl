#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my %list;

while (<STDIN>) {
    chomp;
    $list{$_}++;
}

say "\nResults:";
foreach my $person (sort keys %list) {
    say "$person: $list{$person}";
}
