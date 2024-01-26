# Use an official Node.js runtime as the base image
FROM node:21.10.0-alpine3.14

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json into the directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source inside the docker image
COPY . .

# Make port 999 available to the world outside this container
EXPOSE 9999

# Run server.js when the container launches
CMD [ "node", "server.js" ]