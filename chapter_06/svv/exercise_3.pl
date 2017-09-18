#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my %my_env = %ENV;

my $longest_key = 0;
foreach my $key (sort keys %my_env) {
    if(length $key > $longest_key) {
        $longest_key = length $key;
    }
}

foreach my $key (sort keys %my_env) {
    printf "%*s %0s\n", -$longest_key, $key, $my_env{$key};
}



# !::                         ::\
# ALLUSERSPROFILE             C:\ProgramData
# ANSICON                     103x9999 (103x45)
# ANSICON_DEF                 7
# APPDATA                     C:\Users\E070570\AppData\Roaming
# CATALINA_HOME               /usr/local/apache-tomcat-7.0.77
# CHARACTER                   Fred
# COMMONPROGRAMFILES          C:\Program Files\Common Files
# COMPUTERNAME                GH-9754XF2
# COMSPEC                     C:\WINDOWS\system32\cmd.exe
# CommonProgramFiles(x86)     C:\Program Files (x86)\Common Files
# CommonProgramW6432          C:\Program Files\Common Files
# ConEmuANSI                  ON
# ...
