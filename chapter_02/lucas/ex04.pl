#!/usr/bin/perl
use utf8;
use open ':std', ':encoding(UTF-8)';
print "please enter first multiplier: ";
chomp($first_multiplier=<STDIN>);
print "please enter second multiplier: ";
chomp($second_multiplier=<STDIN>);

print "$first_multiplier * $second_multiplier = ". ($first_multiplier * $second_multiplier);