FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm test
COPY . .
CMD ["node", "index.js"]
