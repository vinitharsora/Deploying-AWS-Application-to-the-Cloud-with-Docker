FROM node:10

# Create app directory
WORKDIR /usr/src/app
ENV PORT 8080
EXPOSE 8080

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

#copy our source bundle into the container
COPY . .

#build the app
RUN npm run build:prod


#this command starts the server
CMD ["npm","run","start"]