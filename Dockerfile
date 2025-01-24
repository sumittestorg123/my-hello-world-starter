# Use an official Node.js image
FROM node:22

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy your static site content to the container
COPY ./site/ /usr/src/app/

# Install the "http-server" package to serve the static files
RUN npm install -g http-server

# Expose port 8080 for the Node.js server
EXPOSE 8080

# Command to run the http-server
CMD ["http-server", ".", "-p", "8080"]
