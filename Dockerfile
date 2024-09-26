# Use Node.js base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the Astro site
RUN npm run build

# Expose the port that the app will run on
EXPOSE 3000

# Start the application
CMD [ "npm", "run", "start" ]
