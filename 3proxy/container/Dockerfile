FROM ubuntu:23.10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y tzdata make gcc

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

COPY 0.9.3.tar.gz /tmp/0.9.3.tar.gz
RUN mkdir -p /tmp/3proxy/
RUN tar xzf /tmp/0.9.3.tar.gz -C /tmp/3proxy/
COPY 3proxy.cfg /tmp/3proxy.cfg

RUN ln -s /tmp/3proxy/3proxy-0.9.3/Makefile.Linux /tmp/3proxy/3proxy-0.9.3/Makefile
RUN make -C /tmp/3proxy/3proxy-0.9.3/

ENTRYPOINT /usr/local/bin/entrypoint.sh
