# Dockerfile.build
FROM node:lts-buster-slim

# Install required packages
RUN apt-get update && apt-get install -y docker.io

# Set up your working directory
WORKDIR /app

# Copy your package.json and package-lock.json files for Node.js
COPY package*.json ./
RUN npm install

# Copy your entire application directory
COPY . .

# Build the React.js app
RUN npm run build
