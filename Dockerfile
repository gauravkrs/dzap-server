# Use an official Node.js runtime as the base image
FROM node

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json .

# Install project dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port your application listens on
EXPOSE 3000

# Command to start your application
CMD ["npm", "start"]
