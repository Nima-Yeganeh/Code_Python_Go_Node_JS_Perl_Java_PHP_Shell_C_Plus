#!/usr/bin/perl

use strict;
use warnings;

sub factorial {
    my $n = shift;
    if ($n <= 1) {
        return 1;
    } else {
        return $n * factorial($n - 1);
    }
}

print "Enter a positive integer: ";
my $num = <STDIN>;
chomp($num);

if ($num =~ /^\d+$/ && $num >= 0) {
    my $result = factorial($num);
    print "The factorial of $num is $result\n";
} else {
    print "Invalid input. Please enter a non-negative integer.\n";
}

