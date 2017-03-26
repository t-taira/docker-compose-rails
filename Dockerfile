FROM ruby:2.3.1
ENV LANG C.UTF-8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install bundler
ENV app /app
RUN mkdir $app
WORKDIR $app
ADD Gemfile* $app/
ENV BUNDLE_GEMFILE=$app/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle
ADD . $app
