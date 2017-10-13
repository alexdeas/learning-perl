#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
print "Welcome to \"Guess the number between 0-100\"\n";
my $secret_number = int(1 + rand 100);
my $lower_limit = 1;
my $upper_limit = 100;
my $exit_crieria = "(quit|exit)";
my $empty_string = "";
my $disable_secret_number ="I'm a little teapot";

print "\$secret_number is $secret_number\n";
print "Please enter a number between 1 and 100. To exit, type 'quit', or 'exit', or blank line. If you wish to disable the showing secret number and reset it, type '$disable_secret_number': \n";
while(<>) {
	chomp;
	my $number_entered = $_;
	print "\$number_entered: '$number_entered'\n";
	my $is_disable_secret_number = ($number_entered eq $disable_secret_number) // 0;
	if ($is_disable_secret_number) {
		#print "secret number reset\n";
		$secret_number = int(1 + rand 100);
		#print "\$secret_number is $secret_number\n";
	}
	if( ($number_entered =~ /$exit_crieria/ ) || $number_entered eq $empty_string) { ##I head you don't like me.....
		print "thank you for taking part\n";
		last;
	} elsif ( !($number_entered =~ /\d+/) ) { 
		print "That's not a number\n";
	} elsif ($number_entered < $lower_limit) {
		print "$number_entered is lower than $lower_limit\n";
	} elsif ($number_entered > $upper_limit) { 
		print "$number_entered is higher than $upper_limit\n";
	} elsif ($number_entered < $secret_number) {
		print "too low\n";
	}elsif ($number_entered > $secret_number) {
		print "too high\n";
	} else {
		print "Please enter a number between 1 and 100. To exit, type 'quit', or 'exit', or blank line. If you wish to disable the showing secret number and reset it, type '$disable_secret_number': \n";
		last;
	}
	
	print "Please enter a number between 1 and 100. To exit, type 'quit', or 'exit', or blank line: \n";
}