# Use the official Node.js image as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

RUN npm test -- --coverage --coverageDirectory=coverage

# Expose any required ports (optional)
EXPOSE 3000

# Command to keep container running for debugging
CMD ["npm","start"]
