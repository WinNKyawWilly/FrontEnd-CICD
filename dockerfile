FROM node:18-alpine

WORKDIR /home/ubuntu/frontend-cicd

COPY package*.json /home/ubuntu/frontend-cicd/

RUN npm install

COPY . /home/ubuntu/frontend-cicd/

EXPOSE 3000

CMD ["node", "index.js"]