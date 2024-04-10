# Use a lightweight Node.js image as the base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (assuming your backend listens on port 3000)
EXPOSE 3000

# Command to run the backend server
CMD ["node", "app.js"]
