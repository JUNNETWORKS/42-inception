FROM debian:buster

# Utils
RUN apt-get update && apt-get install -y vim git wget


# PHP
RUN apt-get update && \
  apt-get install -y php-cgi php-common php-fpm php-pear \
  php-mbstring php-zip php-net-socket php-gd php-xml-util \
  php-gettext php-mysql php-bcmath

# WordPress
WORKDIR /var/www/html
RUN wget https://ja.wordpress.org/latest-ja.tar.gz \
  && tar -xvzf latest-ja.tar.gz \
  && rm latest-ja.tar.gz
COPY ./conf/wp-config.php wordpress/
COPY ./tools/configure.sh /tmp/configure.sh

CMD [ "bash", "/tmp/configure.sh"]
