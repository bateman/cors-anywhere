# Use an official Node.js runtime as the base image
FROM node:alpine

# Set the working directory in the container to /app
WORKDIR /app

# Install git
RUN apk add --no-cache git=2.43.0

# Clone the repository
RUN git clone https://github.com/bateman/cors-anywhere.git . \
    && npm install \
    && node server.js

# Install any needed packages specified in package.json
RUN npm install

# Run server.js when the container launches
CMD [ "node", "server.js" ]