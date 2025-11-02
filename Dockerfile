# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
