# get the base node image
FROM node:17-alpine 

# set the working dir for container
WORKDIR /app

# copy the json file first
COPY ./package.json .

# install npm dependencies
RUN npm install

# copy other project files
COPY . .

EXPOSE 3000

# build the folder
CMD [ "npm", "run", "start" ]