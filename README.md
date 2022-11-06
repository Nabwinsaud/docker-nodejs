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

#### How to publish the docker container to docker hub ?

### Need to have account at docker hub

```bash
docker build -t <dockerusername>/<appname> .



```

### next

```bash
docker push <username>/appname

```

## Stop docker

```bash

docker stop <containerId>





```

### Delete docker

```bash
docker container rm <containerId>

```
