#!/bin/bash

# Check if a filename is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <cpp_filename>"
  exit 1
fi

# Extract the filename from the argument
cpp_filename="$1"
executable_name="${cpp_filename%.*}"  # Remove the .cpp extension to get the executable name

# Compile the C++ code
if g++ -o "$executable_name" "$cpp_filename"; then
  echo "Compilation successful. Running the program..."
  ./"$executable_name"
else
  echo "Compilation failed."
fi

