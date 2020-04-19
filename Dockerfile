FROM ruby:2.6.6

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN gem update --system
RUN bundle install

COPY . .

EXPOSE 3000
CMD [ "rails", "dev:setup"]
CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]