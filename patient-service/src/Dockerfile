# Use official Node runtime
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package.json first
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy source code
COPY . .

# Expose service port
EXPOSE 3000

# Run app
CMD ["npm", "start"]
