FROM ubuntu:24.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get install -y tzdata git vim wget screen ffmpeg curl

RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

RUN mkdir -p /var/www/project/
RUN mkdir -p /tmp/project/

ENTRYPOINT ["/var/www/project/service"]
