#!/usr/bin/perl

use strict;
use warnings;
use DBI;
use feature 'say';

# Connect to SQLite database (create it if not exists)
my $dbh = DBI->connect("dbi:SQLite:dbname=test.db", "", "", { RaiseError => 1, AutoCommit => 1 });

# Create a table
$dbh->do("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)");

# Insert some data
$dbh->do("INSERT INTO users (name, age) VALUES (?, ?)", undef, 'Alice', 25);
$dbh->do("INSERT INTO users (name, age) VALUES (?, ?)", undef, 'Bob', 30);
$dbh->do("INSERT INTO users (name, age) VALUES (?, ?)", undef, 'Charlie', 22);


# Query and display the results
say "Users in the database:";
my $sth = $dbh->prepare("SELECT * FROM users");
$sth->execute();

while (my $row = $sth->fetchrow_hashref) {
  say "ID: $row->{id}, Name: $row->{name}, Age: $row->{age}";
}

# Disconnect from the database
$dbh->disconnect();

