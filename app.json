const express = require('express');
const app = express();
const port = 3000;

// Requirement: / endpoint -> "Hello DevOps" [cite: 25]
app.get('/', (req, res) => {
  res.send('Hello DevOps');
});

// Requirement: /health endpoint -> status check [cite: 25-26]
app.get('/health', (req, res) => {
  res.status(200).json({
    status: 'UP',
    message: 'Health check successful'
  });
});

app.listen(port, () => {
  console.log(`Application is running on http://localhost:${port}`);
});