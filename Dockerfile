# Use the official Node.js image.
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port set in the environment variable
EXPOSE ${PORT}

# # Run the application
# CMD ["npm", "start"]

# Use the entrypoint script
ENTRYPOINT ["/usr/src/app/src/docker/entrypoint.sh"]

