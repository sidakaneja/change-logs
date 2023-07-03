FROM node:18-alpine

USER node

WORKDIR /home/node

COPY --chown=node:node . .

CMD ["node", "src/index.js"]
