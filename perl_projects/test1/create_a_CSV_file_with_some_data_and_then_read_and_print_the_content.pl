#!/usr/bin/perl

use strict;
use warnings;
use Text::CSV;

my @data = (
    ['Name', 'Age', 'Occupation'],
    ['Alice', 25, 'Engineer'],
    ['Bob', 30, 'Teacher'],
    ['Charlie', 22, 'Student'],
);

my $csv_file = 'sample_data.csv';

write_csv(\@data, $csv_file);

my $read_data = read_csv($csv_file);

say "Data read from $csv_file:";
for my $row (@$read_data) {
    say join(', ', @$row);
}

sub write_csv {
    my ($data, $file) = @_;
    my $csv = Text::CSV->new({ binary => 1, eol => $/ });
		    
    open my $fh, '>', $file or die "Could not open '$file' for writing: $!";
		        
    for my $row (@$data) {
        $csv->print($fh, $row);
    }
		        
    close $fh;
}

sub read_csv {
    my ($file) = @_;
    my $csv = Text::CSV->new({ binary => 1 });
		    
    open my $fh, '<', $file or die "Could not open '$file' for reading: $!";
		        
    my @data;
    while (my $row = $csv->getline($fh)) {
        push @data, $row;
    }
						    
    close $fh;
						        
    return \@data;
}

