FROM --platform=linux/x86_64 ruby:3.1-slim
ENV LANG ja_JP.UTF-8
RUN sed -i.bak -e "s;http://httpredir.debian.org/debian;http://ftp.jaist.ac.jp/pub/Linux/debian;g" /etc/apt/sources.list &&\
    apt-get update -qq &&\
    apt-get install -y build-essential libpq-dev vim-nox nano locales locales-all curl git graphviz imagemagick &&\
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    ln -snf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && echo Asia/Tokyo > /etc/timezone

WORKDIR /sample
COPY Gemfile /sample/
COPY Gemfile.lock /sample/
RUN bundle install -j4 --retry 3 &&\
    rm -rf /usr/local/bundle/cache/*.gem &&\
    find /usr/local/bundle/gems/ -name "*.c" -delete &&\
    find /usr/local/bundle/gems/ -name "*.o" -delete
