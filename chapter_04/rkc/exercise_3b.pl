#!/usr/bin/perl
use warnings;

# last person that was greeted
my $last_occupant;

# prints a greeting to the given person and updates $last_occupant 
sub greet {
	my ($person) = @_;
	print "Hi $person! " .
		(defined $last_occupant ? "$last_occupant is also here!\n" : "You are the first one here!\n");
	$last_occupant = $person;
}

greet( "Fred" );
greet( "Barney" );
