# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy both package.json and package-lock.json files to WORKDIR
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy your application code into the container at WORKDIR
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]
