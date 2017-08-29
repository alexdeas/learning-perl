#!/usr/bin/perl
use warnings;

@names = qw /fred betty barney dino wilma pebbles bamm-bamm/;

print "Pool of names: " . join ", ", @names;

print "\nNow tell me some numbers!\n";

chomp(@lines = <STDIN>);

# There should be a check for these entries to be numbers
# rather then things like "lol", but...¯\_(ツ)_/¯
foreach my $number (@lines) {
  if ($number < - ($#names + 1) || $number > $#names) {
    print "I have nothing for the index " . $number . "\n";
  }
  else {
    print $names[$number]."\n";
  }
}
