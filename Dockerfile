FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY update.sh /home/update.sh

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD ["node", "."]
