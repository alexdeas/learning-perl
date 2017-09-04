#!/usr/bin/perl
use warnings;

# everyone in the room
my @room_occupants = ();

# prints a greeting to the given person and updates @room_occupants
sub greet {
	my ($person) = @_;
	print "Hi $person! " .
		(scalar @room_occupants == 0 ? "You are the first one here!\n" : "I've seen: @room_occupants\n");
	push @room_occupants, $person;
}

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );
