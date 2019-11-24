FROM ruby:latest

RUN apt-get update -qq && apt-get install -y postgresql-client

# create user and group.
RUN groupadd -r --gid 1000 hanami && \
    useradd -m -r --uid 1000 --gid 1000 hanami

USER hanami

COPY . .

RUN bundle install --jobs 4

WORKDIR /app
