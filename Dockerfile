FROM node:10-slim
ENV HOST=0.0.0.0 PORT=3000
EXPOSE ${PORT}
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
