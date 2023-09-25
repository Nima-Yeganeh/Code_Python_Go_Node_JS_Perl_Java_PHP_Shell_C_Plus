#!/bin/bash

# Prompt the user for input
echo "Enter a string to create a filename:"
read input_string

# Generate a valid filename from the input string
# Replace spaces with underscores and add an extension
# zfilename="$(echo "$input_string" | tr ' ' '_' | tr -d '[:punct:]').py"
zfilename="$(echo "$input_string" | tr ' ' '_' | sed 's/$/.py/')"

# Check if the file already exists
if [ -e "$zfilename" ]; then
  echo "The file '$zfilename' already exists."
else
  # Create the file
  touch "$zfilename"
  # Open the file in Vim
  vim "$zfilename"
  # Run
  python3 "$zfilename"
fi

