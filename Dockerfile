FROM node:18-alpine

USER node

WORKDIR /home/node

COPY --chown=node:node package.json package-lock.json .

RUN npm ci

COPY --chown=node:node . .

CMD ["node", "src/index.js"]
