FROM node:10.23.2-alpine

EXPOSE 8000
ENV FRONT_URL=http://localhost:5000

RUN apk add git \
    && git clone https://github.com/docker-hy/backend-example-docker.git

WORKDIR backend-example-docker
RUN npm install

CMD ["npm", "start"]
