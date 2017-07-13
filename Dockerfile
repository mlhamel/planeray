FROM ruby:2.3.1-alpine

RUN apk update && \
    apk upgrade && \
    apk add --update alpine-sdk libpq  postgresql-dev linux-headers libxml2 libxml2-dev libxslt libxslt-dev && \
    rm -rf /var/cache/apk/*

RUN mkdir /planeray
WORKDIR /planeray

ADD . /planeray/
ADD config/crontab /etc/cron.d/planeray-crontab

RUN chmod 0644 /etc/cron.d/planeray-crontab
RUN touch /var/log/cron.log
RUN set -ex && \
    bundle install --without development test

EXPOSE 3000
