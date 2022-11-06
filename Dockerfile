# first image should be provided

FROM node:latest

# 2nd step is to copy the 
# copy source destination
# COPY index.js /home/myapp/index.js 

COPY . /home/myapp
# copy everything
COPY package.json /home/myapp/package.json

# need to switch to the app directory to run

WORKDIR /home/myapp



RUN yarn install

EXPOSE 8000


CMD ["node","index"]

