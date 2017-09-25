use strict;
use warnings;
use autodie;

my @list;

while (<STDIN>) {
    push @list, $_;
}

print "123456789012345678901234567890123456789012345678901234567890\n";
my $first_in_list = shift @list;
printf "%*s", $first_in_list, $_ for @list;



# $ perl exercise3.pl
# 30
# first
# second
# 123456789012345678901234567890123456789012345678901234567890
#                         first
#                        second
