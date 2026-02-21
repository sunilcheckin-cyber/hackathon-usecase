FROM node:20-alpine

# Create app directory
WORKDIR /app


# Install production dependencies
RUN npm install --production

# Copy application source code
COPY application-service/src/index.js ./

# Expose application port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
