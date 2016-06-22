FROM ruby:2.3-alpine
RUN apk add --update alpine-sdk linux-headers sqlite-dev postgresql-dev libxml2-dev libxslt-dev && \
    rm -rf /var/cache/apk/*
RUN mkdir /planeray
WORKDIR /planeray
ADD . /planeray/
ADD config/crontab /etc/cron.d/planeray-crontab
RUN chmod 0644 /etc/cron.d/planeray-crontab
RUN touch /var/log/cron.log
RUN bundle config build.nokogiri --use-system-libraries && \
    bundle install
EXPOSE 3000
