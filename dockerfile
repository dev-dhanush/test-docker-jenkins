# Use an official Node.js base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port your app listens on (5000 or 3000)
EXPOSE 5000

# Start the app
CMD ["node", "index.js"]

