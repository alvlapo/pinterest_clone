FROM alvlapo/rails:latest

ENV APP_PATH=/usr/src/app

RUN mkdir -p $APP_PATH

WORKDIR $APP_PATH

COPY src/Gemfile* ./

RUN bundle install --binstubs --jobs 20 --retry 5
