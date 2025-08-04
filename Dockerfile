# Use Node.js base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose port and run
EXPOSE 3000
CMD ["npm", "start"]
