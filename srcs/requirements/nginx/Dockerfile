FROM debian:buster

ENV debian_release="buster"

RUN apt-get update \
  && apt-get install -y systemd ca-certificates nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD [ "/usr/sbin/nginx" ]