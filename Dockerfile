# Use Node.js as the base image
FROM node:16

# Create and set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install necessary dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port your app is running on
EXPOSE 3015

# Set environment variables (optional, but recommended for production)
ENV NODE_ENV=production

# Start the app
CMD ["npm", "start"]
