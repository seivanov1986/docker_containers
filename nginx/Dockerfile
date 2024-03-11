FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y nginx certbot python3-certbot-nginx cron
RUN apt-get install tzdata

COPY crontab /etc/crontab

RUN cron

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
EXPOSE 443
