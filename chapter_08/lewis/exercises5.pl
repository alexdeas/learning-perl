#!/usr/bin/perl
while (<>) {                   # take one input line at a time
	if (/\b(?<word>\w+a)(?<tail>.{0,5})/) {
		print "'word' contains '$+{word}'' and 'tail' contains '$+{tail}'\n";  # the special match vars
	}
}