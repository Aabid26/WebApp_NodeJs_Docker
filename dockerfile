FROM node:18-alpine

#create app directory
WORKDIR /app

#Install app dependencies
COPY package*.json ./

#RUN npm install
RUN npm install

#BUNDLE Source app
COPY . .

#Expose port
EXPOSE 808

#command to run
CMD [ "npm","start" ]
