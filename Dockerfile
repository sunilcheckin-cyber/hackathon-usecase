FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy dependency files first (Docker cache optimization)
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy application source code
COPY application-service/src/index.js ./

# Expose application port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
