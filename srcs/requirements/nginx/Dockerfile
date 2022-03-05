FROM debian:buster

ENV debian_release="buster"

# TODO: デバッグ用. あとで消す.
RUN apt-get update \
  && apt-get install -y vim

RUN apt-get update \
  && apt-get install -y systemd ca-certificates nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf

# create user "nginx"
RUN adduser --system --group --no-create-home nginx

CMD [ "/usr/sbin/nginx" ]