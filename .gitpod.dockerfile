FROM marcopeg/gitpod-workspace-postgres:2.5.0

# Install Ruby
ENV RUBY_VERSION=2.6.6
RUN bash -lc "rvm install ruby-$RUBY_VERSION && rvm use ruby-$RUBY_VERSION --default"

# Install Heroku
RUN curl https://cli-assets.heroku.com/install.sh | sh
