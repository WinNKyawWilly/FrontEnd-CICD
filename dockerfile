FROM node:10-alpine

RUN mkdir -p /home/ubuntu/frontend-cicd/node_modules && chown -R node:node /home/ubuntu/frontend-cicd

WORKDIR /home/ubuntu/frontend-cicd

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD ["node", "index.js"]