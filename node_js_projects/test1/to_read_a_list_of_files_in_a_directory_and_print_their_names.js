const fs = require('fs');

// Specify the path to the directory you want to list
const directoryPath = './';

// Read the contents of the directory
fs.readdir(directoryPath, (err, files) => {
	if (err) {
		console.error(`Error reading directory: ${err.message}`);
		return;
	}

	// Print the list of files
	console.log('Files in the directory:');
	files.forEach(file => {
		console.log(file);
	});
});

