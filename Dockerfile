# Use an official Node.js runtime as the base image
FROM node

# Set the working directory in the container to /app
WORKDIR /app

# Install git
RUN apk add --no-cache git

# Clone the repository
RUN git clone https://github.com/bateman/cors-anywhere.git .

# Install any needed packages specified in package.json
RUN npm install

# Run server.js when the container launches
CMD [ "node", "server.js" ]