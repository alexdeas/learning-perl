#!/usr/bin/perl

use strict;
use warnings;

while (<>) {                   # take one input line at a time
	if (/\b(?<word>\w+a)\b/) {
		print "'word' contains '$+{word}'\n";  # the special match vars
	}
}