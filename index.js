// index.js
const http = require('http');

const server = http.createServer((req, res) => {
  res.end("Hello from Docker!");
});

server.listen(5000, '0.0.0.0', () => {
  console.log("Server running on port 5000");
});
