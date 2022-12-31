#!/bin/env perl
# https://metacpan.org/pod/POSIX::strftime::GNU
use strict;
use POSIX qw(setlocale strftime);
setlocale(POSIX::LC_ALL,'C');

my $line;
my $yesterday = strftime "%h %e", localtime(time-86400);

while (defined($line = <STDIN>)) {
        if ($line =~ /^$yesterday/) {
                print $line;
        }
}
