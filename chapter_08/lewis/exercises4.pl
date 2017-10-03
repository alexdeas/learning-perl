#!/usr/bin/perl
while (<>) {                   # take one input line at a time
	if (/\b(?<word>\w+a)\b/) {
		print "'word' contains '$+{word}'\n";  # the special match vars
	}
}