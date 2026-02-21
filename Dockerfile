FROM node:20-alpine

WORKDIR /app

COPY application-service/src/index.js ./

RUN npm install --development

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
