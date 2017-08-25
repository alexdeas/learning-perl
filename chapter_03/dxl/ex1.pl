#!/usr/bin/perl
use warnings;

chomp(@lines = <STDIN>);


@lines = reverse(@lines);

$output = join("\n", @lines);

print $output;

# Or maybe...
# foreach my $line (@lines) {
#   print $line."\n";
# }
