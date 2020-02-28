# visits

#specify base image
#aline : popular word in Docker as for most striped down version of an image
FROM node:alpine

#This will working directory in container
WORKDIR /app/

COPY package.json .

#install dependecncies
RUN npm install
COPY . .

#Set the start command
CMD ["npm", "start"]