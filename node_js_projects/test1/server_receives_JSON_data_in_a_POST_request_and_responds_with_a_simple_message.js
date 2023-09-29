const express = require('express');
const bodyParser = require('body-parser');

const app = express();

// Middleware to parse JSON data in the request body
app.use(bodyParser.json());

// POST request handler
app.post('/api/message', (req, res) => {
  // Assuming the request body contains a 'message' field
  const message = req.body.message || 'No message provided';

  // Send a response with the received message
  res.json({ receivedMessage: message });
});

// Define the port number for the server
const port = 3000;

// Start the server and listen on the specified port
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});

