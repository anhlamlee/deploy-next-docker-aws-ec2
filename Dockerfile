FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN rm -f ~/.npmrc && \
    npm config set registry https://registry.npmjs.org/ && \
    npm set audit false && \
    npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]