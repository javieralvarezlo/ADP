FROM ruby:3.1.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client libvips

RUN mkdir /adp
WORKDIR /adp
ADD Gemfile /adp/Gemfile
ADD Gemfile.lock /adp/Gemfile.lock
RUN bundle install
ADD . /adp