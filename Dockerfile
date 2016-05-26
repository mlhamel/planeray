FROM ruby:2.3.0
RUN mkdir /planeray
WORKDIR /planeray
ADD . /planeray/
RUN apt-get update
RUN bundle install
