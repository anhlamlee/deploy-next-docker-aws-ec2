# Use Node 18 Alpine image (alpine là phiên bản tối giản)
FROM node:18-alpine

# Set the working directory (các câu lệnh phía sau sẽ chạy trong folder app - folder nằm trong container)
WORKDIR /app

# Copy package files ( copy vào folder app, giúp caching)
COPY package*.json ./

# Install dependencies
# RUN npm install
RUN npm install --legacy-peer-deps --no-audit --no-fund

# Copy the rest of the application ( copy toàn bộ mã nguồn còn lại vào app)
COPY . .

# Build the application ( NextJS will create .next folder)
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]