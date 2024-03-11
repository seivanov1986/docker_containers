#!/bin/bash

#docker login -u "seivanov" -p "<password>" docker.io
docker build --platform linux/amd64 --no-cache -f Dockerfile -t nginx .
docker tag `docker images -q nginx` seivanov/nginx
docker push seivanov/nginx:latest
