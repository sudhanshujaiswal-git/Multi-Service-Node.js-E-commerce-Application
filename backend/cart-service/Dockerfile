FROM node:18-bullseye

WORKDIR /app

COPY package*.json ./
RUN npm config set strict-ssl false && npm install

COPY . .

EXPOSE 3003

CMD ["node", "server.js"]
