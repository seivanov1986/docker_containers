#!/bin/bash

docker run -d --restart=always -p 80:80 -p 443:443 seivanov/nginx:latest
