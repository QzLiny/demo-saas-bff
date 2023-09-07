FROM node:18
WORKDIR /usr/src/app
COPY /code/package*.json ./
RUN npm install
EXPOSE 5040
COPY . .
WORKDIR code
CMD [ "node", "debug.js" ]
