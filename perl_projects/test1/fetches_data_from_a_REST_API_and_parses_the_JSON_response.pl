#!/usr/bin/perl

use strict;
use warnings;
use LWP::UserAgent;
use JSON;
use feature 'say';

my $api_url = 'https://jsonplaceholder.typicode.com/posts/1';

my $ua = LWP::UserAgent->new;

my $response = $ua->get($api_url);

if ($response->is_success) {
	my $data = decode_json($response->decoded_content);
	say "Title: $data->{title}";
	say "Body: $data->{body}";
} else {} else {
	say "Error: " . $response->status_line;
}

