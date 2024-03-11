FROM ubuntu:23.10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get install -y tzdata git vim wget screen ffmpeg curl

RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

RUN mkdir -p /var/www/project/
RUN mkdir -p /tmp/project/

RUN wget https://golang.org/dl/go1.22.0.linux-amd64.tar.gz -P /tmp

COPY ./src/filebeat-8.12.2-amd64.deb /opt/filebeat-8.12.2-amd64.deb
RUN dpkg -i /opt/filebeat-8.12.2-amd64.deb

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT /usr/local/bin/entrypoint.sh
