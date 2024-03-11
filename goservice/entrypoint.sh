#!/bin/bash

tar -C /usr/local -xzf /tmp/go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

cd /var/www/project/
./bin/service &
#/usr/local/go/bin/go run service/cmd/service/main.go &

while true ; do sleep 5; done;
