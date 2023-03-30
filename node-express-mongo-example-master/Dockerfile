FROM --platform=linux/amd64 node:lts-alpine
ENV NODE_ENV=production
ENV DATABASE_CONN=mongodb://127.0.0.1:27017
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
RUN chown -R node /usr/src/app
USER node
CMD ["node", "index.js"]