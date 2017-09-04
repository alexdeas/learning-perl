#!/usr/bin/perl
use warnings;

@lines = <STDIN>;
print sort @lines;

# now put everything on a single line
chomp @lines;
print join ",", sort @lines;

1;
