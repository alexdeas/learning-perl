#!/usr/bin/perl
use utf8;

my %last_name = (  # a hash may be a lexical variable
  fred   => 'flintstone',
  barney => 'rubble',
  wilma  => 'flintstone',
);

print "please nter your first name: ";
chomp($first_name = <STDIN>);

print "your last name is $last_name{$first_name} \n";


