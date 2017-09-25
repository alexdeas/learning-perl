use strict;
use warnings;
use autodie;

my @list;

while (<STDIN>) {
    push @list, $_;
}

print "123456789012345678901234567890123456789012345678901234567890\n";
printf "%21s" x @list, @list;




# $ perl exercise2.pl
# first
# second
# third
# 123456789012345678901234567890123456789012345678901234567890
#                first
#               second
#                third
