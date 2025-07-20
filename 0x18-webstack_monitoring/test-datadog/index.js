const tracer = require('dd-trace').init({
  service: 'test-node-app',
  env: 'dev'
});

const express = require('express');
const app = express();

console.log('Datadog tracer initialized ✅');

app.get('/', (req, res) => {
  res.send('Hello from Datadog!');
});

app.listen(3000, () => {
  console.log('Server running on http://localhost:3000');
});
