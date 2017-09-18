#!/usr/bin/perl
use utf8;

print "please enter a list of names. terminate line input with ctrl+z and enter: ";
chomp(@names = <STDIN>);

%name_count = ();
foreach $name (@names) {
	$name_count{$name} = $name_count{$name} +1;
}

foreach $k (keys %name_count) {
	print "key: $k, \t\t\t value: $name_count{$k} \n";
}