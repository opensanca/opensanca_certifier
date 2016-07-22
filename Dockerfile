FROM ruby:2.3
MAINTAINER mail@carlosribeiro.me

RUN apt-get update && apt-get install -y \
  build-essential \
  ghostscript \
  imagemagick \
  nodejs

RUN mkdir -p /var/app
COPY . /var/app
WORKDIR /var/app

RUN bundle install
CMD rails s -b 0.0.0.0
