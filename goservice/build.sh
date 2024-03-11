#!/bin/bash

#docker login -u "seivanov" -p "<password>" docker.io
docker build --platform linux/amd64 --no-cache -f Dockerfile -t gocart-service .
docker tag `docker images -q gocart-service` seivanov/gocart-service
docker push seivanov/gocart-service:latest
