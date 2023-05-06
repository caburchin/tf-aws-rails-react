FROM --platform=linux/x86_64 node:16-alpine
ENV LANG ja_JP.UTF-8
RUN apk --update add git curl tzdata bash nano vim openssl &&\
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata &&\
    rm -rf /var/cache/apk/*

WORKDIR /sample
RUN yarn
