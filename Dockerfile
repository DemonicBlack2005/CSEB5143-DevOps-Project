# Use official Node base image [cite: 50]
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies [cite: 43]
RUN npm install

# Copy the application source code [cite: 35]
COPY . .

# Expose the application port (3000) [cite: 51]
EXPOSE 3000

# Run the app inside the container [cite: 52]
CMD ["node", "app.js"]