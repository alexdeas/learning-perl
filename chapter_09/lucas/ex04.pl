#!/usr/bin/perl -w
use strict;
use warnings;
#input: shebang.text
$^I = ".bak";

while (<>) {
  s/(.*?)\bshebang\b(.*?)/($1)($2)($3) \#\# Copyright (C) 20XX by Yours Truly/ig;
  print;
}