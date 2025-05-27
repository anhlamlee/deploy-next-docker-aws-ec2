FROM node:18-alpine

WORKDIR /app

# Set npm registry explicitly
RUN npm config set registry https://registry.npmjs.org/

COPY package*.json ./

RUN npm install

# Just stop here — no copying of rest of app yet
