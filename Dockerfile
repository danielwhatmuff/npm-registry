FROM node:5

MAINTAINER "Daniel Whatmuff" <danielwhatmuff@gmail.com>

RUN npm install --loglevel warn -g sinopia && \
    useradd sinopia && \
    mkdir -p /sinopia && \
    chown sinopia:sinopia /sinopia

USER sinopia

WORKDIR /sinopia

ADD config.yaml /sinopia/config.yaml

CMD ["sinopia"]
