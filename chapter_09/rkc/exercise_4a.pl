#!/usr/bin/perl
use warnings;
use strict;

$^I = ".bak";

while (<>) {
	print;

	# add the following after any line that starts with #!/usr/bin/perl
	if (m|\A#!/usr/bin/perl|) {
		print "## Copyright (C) 2017 by Yours Truly\n";
	}
}
