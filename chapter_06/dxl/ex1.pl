#!/usr/bin/perl
use strict;
use warnings;

my %names = (
  michelangelo => "buonarroti", # the genius behind the Sistine Chapel, the David, the Pietà, etc...
  leonardo => "da vinci", # the quintessential inventor who lived about 500 years ago;
                          # "da Vinci" means "from Vinci", a small town near Florence
  raffaello => "sanzio", # you won't know his works if haven't studied art, probably :(
  donatello => "bardi", # another great artist, he did a David too, less famous but we people from Florence love it
  michelangelo => "merisi", # you may know this guy as Caravaggio. This entry here will kill the poor "buonarroti"!
  galileo => "galilei", # the inventor of the scientific method
  guglielmo => "marconi", # Nobel Prize in Physics for his work in wireless telegraphy (radio)
  amerigo => "vespucci", # the cartographer that gave the name to the New World, "America";
                         # also, he was the first to call it "New World" (Novus Mundus)
  antonio => "vivaldi", # one of the greatest Italian composer of the baroque period
  antonio => "canova", # amazing neoclassical sculptor (check this out: https://goo.gl/5pScFe);
                       # he probably wasn't a violent guy, but he's killing "vivaldi" now!
                       # Note: Canova's and Vivaldi's lives didn't overlap at all...
);

print "Please enter a first name, I'll get the corresponding last name for you: ";
chomp(my $first_name = <STDIN>);
if ( length($first_name) ) { # just checking there is actually an input of some sort
  if ( $names{$first_name} ) {
    print "The last name is: $names{$first_name}.\n";
  }
  else {
    print "I don't know this guy!\n";
  }
}
else {
  print "I need a name...\n";
}
