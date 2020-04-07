FROM gitpod/workspace-full

# Install Ruby
ENV RUBY_VERSION=2.6.1
RUN bash -lc "rvm install ruby-$RUBY_VERSION && rvm use ruby-$RUBY_VERSION --default"
