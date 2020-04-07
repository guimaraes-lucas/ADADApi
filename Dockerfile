FROM ruby:2.6.1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem update --system
RUN bundle install

COPY . .

EXPOSE 3000
CMD [ "rails", "dev:setup"]
CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]