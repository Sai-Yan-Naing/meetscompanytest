FROM ruby:2.6.5-alpine

ENV APP_NAME="meetscompany"

WORKDIR /var/www/$APP_NAME

RUN apk add --update bash perl
RUN apk add libxslt-dev libxml2-dev build-base git
RUN apk add mysql-client mysql-dev
RUN apk add --no-cache file
RUN apk add yarn --no-cache

RUN apk add npm
ADD . /var/www/$APP_NAME
VOLUME /var/www/$APP_NAME

RUN gem install bundler
RUN bundle install
RUN yarn install --check-files
RUN rails webpacker:install
RUN yarn add admin-lte

EXPOSE 3000

CMD ["bash"]

