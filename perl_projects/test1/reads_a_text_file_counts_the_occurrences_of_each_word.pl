#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

# Prompt the user for a file name
say "Enter the name of the text file:";
my $filename = <STDIN>;
chomp($filename);

# Open the file or exit if it doesn't exist
open my $file, '<', $filename or die "Could not open file '$filename' $!";

# Hash to store word counts
my %word_counts;

# Read each line of the file
while (my $line = <$file>) {
    chomp($line);

    # Split the line into words
    my @words = split(/\s+/, $line);

    # Count occurrences of each word
    foreach my $word (@words) {
        # Remove non-word characters from the word
        $word =~ s/[^A-Za-z]//g;

        # Increment the word count in the hash
        $word_counts{lc($word)}++ if $word ne '';
    }
}

# Close the file
close $file;

# Print the word counts
say "Word frequencies in '$filename':";
foreach my $word (sort keys %word_counts) {
    say "$word: $word_counts{$word}";
}

