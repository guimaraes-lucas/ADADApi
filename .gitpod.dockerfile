FROM gitpod/workspace-postgres

# Install Ruby
ENV RUBY_VERSION=2.6.5
RUN bash -lc "rvm install ruby-$RUBY_VERSION && rvm use ruby-$RUBY_VERSION --default"

# Install Heroku
RUN curl https://cli-assets.heroku.com/install.sh | sh
