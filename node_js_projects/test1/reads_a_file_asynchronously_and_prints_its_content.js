// Import the 'fs' module for file system operations
const fs = require('fs');

// Specify the path to the file you want to read
const filePath = 'example.txt';

// Read the file asynchronously
fs.readFile(filePath, 'utf8', (err, data) => {
  if (err) {
    console.error(`Error reading file: ${err.message}`);
    return;
  }

  // Print the content of the file to the console
  console.log(`File content:\n${data}`);
});

