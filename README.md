# Use the official Node.js image (latest version)
FROM node:latest

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all the files from the local directory into the /app directory in the container
ADD . .

# Install dependencies defined in package.json
RUN npm install

# Run the Node.js application by executing index.js
CMD node index.js

