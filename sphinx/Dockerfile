FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install wget libmysqlclient21

RUN ln -s /usr/lib/x86_64-linux-gnu/libmysqlclient.so.18.0.0 /usr/lib/libmysqlclient.so

RUN wget http://sphinxsearch.com/files/sphinx-3.3.1-b72d67b-linux-amd64.tar.gz -O /tmp/sphinx-3.3.1.tar.gz
RUN tar xzf /tmp/sphinx-3.3.1.tar.gz -C /opt/

RUN mkdir -p /var/log/sphinxsearch
RUN mkdir -p /var/run/sphinxsearch
RUN mkdir -p /var/lib/sphinxsearch/data
RUN mkdir -p /var/run/sphinxsearch/
RUN mkdir -p /usr/local/var/data/

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT /usr/local/bin/entrypoint.sh
