#!/bin/bash

#docker login -u "seivanov" -p "<password>" docker.io
docker build --platform linux/amd64 --no-cache -f Dockerfile -t gocart-redis .
docker tag `docker images -q gocart-redis` seivanov/gocart-redis
docker push seivanov/gocart-redis:latest
