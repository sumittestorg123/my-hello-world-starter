# Use an official Node.js image
FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app

COPY . .

EXPOSE 8080

CMD ["npm", "start", "--port=8080"]
