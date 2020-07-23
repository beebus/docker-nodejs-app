FROM node:12-alpine
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn install
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]