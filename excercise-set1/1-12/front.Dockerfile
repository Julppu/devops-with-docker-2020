FROM node:10.23.2-alpine

EXPOSE 5000
ENV API_URL=http://localhost:8000

RUN apk add git \
    && npm install -g serve

RUN git clone https://github.com/docker-hy/frontend-example-docker.git
WORKDIR frontend-example-docker
RUN npm install \
    && npm run build

CMD ["serve", "-s", "-l", "5000", "dist"]
