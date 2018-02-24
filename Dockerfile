# Base image:
FROM ruby:2.3.3

# Mantainer info
LABEL maintainer="Danilo A N S Silva <silva.danilo.nobre@gmail.com>"

# Install dependencies:
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev npm

# Set an environment variable where the Rails app is installed to inside of Docker image:
ENV RAILS_ROOT /var/www/fractal_test
ENV BUNDLE_GEMFILE $RAILS_ROOT/Gemfile
ENV BUNDLE_PATH /var/www/bundle

# Set working directory, where the commands will be ran:
RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT

# Bundler:
RUN gem install bundler && bundle config --global path "$BUNDLE_PATH" && bundle config --global bin "$BUNDLE_PATH/bin"
