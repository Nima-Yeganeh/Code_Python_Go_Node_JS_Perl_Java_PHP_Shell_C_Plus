// Import the 'http' module to create an HTTP server
const http = require('http');

// Define the hostname and port for the server
const hostname = '0.0.0.0';
const port = 3000;

// Create an HTTP server
const server = http.createServer((req, res) => {
  // Set the response header with a status code of 200 (OK)
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  
  // Send the "Hello, World!" message as the response
  res.end('Hello, World!\n');
});

// Start the server and listen on the specified port and hostname
server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});

