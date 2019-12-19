FROM ruby:2.6.5-alpine3.10

RUN apk --update --no-cache add postgresql-client alpine-sdk postgresql-dev nodejs-current openssl-dev libc6-compat gcompat

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY . .

RUN gem update --system
RUN gem install bundler

RUN CFLAGS="-Wno-cast-function-type" BUNDLE_FORCE_RUBY_PLATFORM=1 bundle install --jobs 20 --retry 5 --path /bundle

RUN ruby -r google/protobuf -e'puts "hello"'
