FROM ruby:2.3

RUN apt-get update && apt-get install -y \
  nodejs \
  build-essential \
  mysql-client \
  postgresql-client \
  sqlite3 \
  --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app

WORKDIR /app

COPY src/Gemfile* ./

RUN bundle install --binstubs --jobs 20 --retry 5
