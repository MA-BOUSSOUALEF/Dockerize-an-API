FROM node:22.11.0-alpine
WORKDIR /app
ADD package*.json .
RUN npm install
ADD . .
RUN npm install 
CMD node index.js
