FROM node:argon

MAINTAINER "Daniel Whatmuff" <danielwhatmuff@gmail.com>

RUN npm install -g sinopia && \
    useradd sinopia && \
    mkdir -p /sinopia

WORKDIR /sinopia

ADD config-example.yaml /sinopia/config-example.yaml

CMD ["sinopia"]
