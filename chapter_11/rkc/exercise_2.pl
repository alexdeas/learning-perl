#!/usr/bin/perl
use warnings;
use strict;
use Time::Moment;

my $USAGE = "USAGE: $0 <year> <month>
   Prints the duration from the given year, month til now.";

# some sanity checks
my ( $from_year, $from_month ) = @ARGV;
if ( scalar @ARGV != 2 ) {
  print $USAGE;
  exit 1;
}
elsif ( not $from_year =~ /^\d+$/ or not $from_month =~ /^\d+$/ ) {
  print "<year> and <month> must be whole numbers.\n" . $USAGE;
  exit 1;
}
elsif ( $from_month < 1 or $from_month > 12 ) {
  print "<month> must be between 1 and 12.\n" . $USAGE;
  exit 1;
}

my $then = Time::Moment->new(
  year  => $from_year,
  month => $from_month,
  day   => 1
);

my $now = Time::Moment->now;

# if $then is in the future, reverse the variables to avoid a negative value when calculating the interval
if ( $then->compare($now) > 0 ) {
  ( $then, $now ) = ( $now, $then );
}

my $delta_years = $then->delta_years($now);    # number of whole years between $then and $now
$then = $then->plus_years($delta_years);       # so now we shift $then, by this many years
my $delta_months = $then->delta_months($now);  # number of whole months...
$then = $then->plus_months($delta_months);     # smaller steps but always forward...
my $delta_days = $then->delta_days($now);      # number of whole days...

print $delta_years
  . " year" . ($delta_years == 1 ? "" : "s") . ", "
  . $delta_months
  . " month" . ($delta_months == 1 ? "" : "s") . ", and "
  . $delta_days
  . " day" . ($delta_days == 1 ? "" : "s") . "\n";
