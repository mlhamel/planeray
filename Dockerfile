FROM ruby:2.3.0
RUN mkdir /planeray
WORKDIR /planeray
ADD . /planeray/
RUN apt-get update
RUN bundle install
RUN bundle exec whenever --write-crontab
EXPOSE 3000
CMD bin/run
