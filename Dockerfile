FROM node:26-alpine
RUN npm install -g yarn
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn install
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]