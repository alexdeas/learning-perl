#!/usr/bin/perl

use strict;
use warnings;

while (<>) {                   # take one input line at a time
	if (/\b(\w+a)\b/) {
		print "\$1 contains '$1'\n";  # the special match vars
	}
}