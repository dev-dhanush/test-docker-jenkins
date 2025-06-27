# Use official Node image
FROM node:14

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install

COPY . .

# Start the app
CMD ["npm", "start"]
