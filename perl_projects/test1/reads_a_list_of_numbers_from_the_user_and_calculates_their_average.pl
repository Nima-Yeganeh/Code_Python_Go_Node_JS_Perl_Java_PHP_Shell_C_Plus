#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

say "Enter a list of numbers separated by spaces:";
my $input = <STDIN>;
chomp($input);

my @numbers = split(/\s+/, $input);

my $sum = 0;
my $count = 0;

foreach my $number (@numbers) {
    if ($number =~ /^-?\d+\.?\d*$/) {
        $sum += $number;
        $count++;
    } else {
        say "Invalid input: '$number' is not a valid number.";
    }
}

if ($count > 0) {
    my $average = $sum / $count;
    say "The average of the entered numbers is: $average";
} else {
    say "No valid numbers entered.";
}

