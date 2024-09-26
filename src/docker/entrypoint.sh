#!/bin/sh

# Entry point script to start the Node.js application

echo "************************************************************************************"
echo "Starting application with environment variables:"
echo "APP_NAME=$APP_NAME"
echo "PORT=$PORT"
echo "ENVIRONMENT=$ENVIRONMENT"
echo "CUSTOM_MESSAGE=$CUSTOM_MESSAGE"
echo "************************************************************************************"

# You can run any pre-startup scripts or logic here if needed

# Start the Node.js application
npm run start
