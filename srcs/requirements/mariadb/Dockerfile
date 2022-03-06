FROM debian:buster

# MariaDB
RUN apt-get update \
  && apt-get install -y mariadb-server mariadb-client

COPY conf/setup.sql /var/www/setup.sql
COPY conf/setup_sql.cnf /etc/mysql/conf.d/setup_sql.cnf

CMD ["mysqld_safe"]