#!/bin/bash

#docker login -u "seivanov" -p "<password>" docker.io
docker build --platform linux/amd64 --no-cache -f Dockerfile -t gocart-sphinx .
docker tag `docker images -q gocart-sphinx` seivanov/gocart-sphinx
docker push seivanov/gocart-sphinx:latest
