FROM node:18-bullseye

WORKDIR /app

COPY package*.json ./
RUN npm config set strict-ssl false && npm cache clean --force && npm install --force

COPY . .

EXPOSE 3002

CMD ["node", "server.js"]
