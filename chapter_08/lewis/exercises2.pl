#!/usr/bin/perl
while (<>) {                   # take one input line at a time
	if (/\b\w+a\b/) {
		print "Matched: |$`<$&>$'|\n";  # the special match vars
	}
}