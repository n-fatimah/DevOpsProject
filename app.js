// Importing required modules
const express = require('express');

// Creating an instance of express app
const app = express();

// Define a route for the root URL
app.get('/', (req, res) => {
  res.send('Hello, World!');
});

// Define the port number
const port = 3000;

// Start the server and listen on the defined port
app.listen(port, () => {
  console.log(`your Server is running at http://localhost:${port}/`);
});
