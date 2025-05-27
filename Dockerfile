# Use Node 18 Alpine image
FROM node:18-alpine

WORKDIR /app

# Set NPM registry explicitly (bypass any bad default)
RUN npm config set registry https://registry.npmjs.org/

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the application
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]