FROM debian:buster

# MariaDB
RUN apt-get update \
  && apt-get install -y mariadb-server mariadb-client

COPY tools/configure.sh /tmp/configure.sh

CMD ["bash", "/tmp/configure.sh"]
