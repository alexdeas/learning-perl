package Sum;
use strict;
use warnings;

require "total.pl";

my @fred = qw{1 3 4};
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";

print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";


# $ perl exercise1.pl
# The total of @fred is 8.
# Enter some numbers on separate lines: 1
# 2
# 3
# The total of those numbers is 6.
