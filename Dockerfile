# A basic apache server with PHP 7.

FROM ubuntu:16.04

MAINTAINER Nat version: 0.1

RUN apt-get update

RUN apt-get install -y php7.0-fpm php7.0-mysql php7.0-common php7.0-mbstring php7.0-gd php7.0-json php7.0-cli php7.0-curl libapache2-mod-php7.0

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
