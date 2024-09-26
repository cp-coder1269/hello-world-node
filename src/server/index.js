// hello-node-project/src/server/index.js
require('dotenv').config({ path: './src/server/.env' });

const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hello, World!');
});

app.get('/healthcheck', (req, res) => {
  const envVars = {
    appName: process.env.APP_NAME,
    port: process.env.PORT,
    environment: process.env.ENVIRONMENT,
    customMessage: process.env.CUSTOM_MESSAGE
  };

  // Print environment variables to the console for demonstration
  console.log('Environment Variables:', envVars);

  // Return environment variables in the response
  res.json({
    status: 'healthy',
    environmentVariables: envVars,
  });
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
