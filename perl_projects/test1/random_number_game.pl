#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

# Generate a random number between 1 and 100
my $secret_number = int(rand(100)) + 1;
my $attempts = 0;

say "Welcome to the Number Guessing Game!";
say "I have selected a random number between 1 and 100.";

while (1) {
    $attempts++;
    say "Enter your guess (1-100): ";
    my $guess = <STDIN>;
    chomp($guess);

    if ($guess =~ /^\d+$/) {
        if ($guess == $secret_number) {
            say "Congratulations! You guessed the correct number ($secret_number) in $attempts attempts.";
            last;
        } elsif ($guess < $secret_number) {
            say "Try a higher number.";
        } else {
            say "Try a lower number.";
        }
    } else {
        say "Invalid input. Please enter a valid number.";
    }
}

