FROM node:10.23.2-alpine

RUN apk add git \
    && git clone https://github.com/docker-hy/backend-example-docker.git

WORKDIR backend-example-docker
RUN npm install

CMD ["npm", "start"]
