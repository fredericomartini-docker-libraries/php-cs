FROM php:7.2.0-cli
MAINTAINER Frederico Martin <fredmalmeida@gmail.com>

RUN apt-get update && apt-get install -y libbz2-dev
RUN docker-php-ext-install bz2

RUN curl -O -L https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
RUN mv phpcs.phar /usr/local/bin/phpcs
RUN chmod +x /usr/local/bin/phpcs

RUN mkdir -p /app
WORKDIR /app
