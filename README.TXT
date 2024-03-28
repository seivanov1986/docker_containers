docker login -u "seivanov" -p "<password>" docker.io
docker build --platform linux/amd64 --no-cache -f Dockerfile -t gocart-mysql .
docker tag `docker images -q gocart-mysql` seivanov/gocart-mysql
docker push seivanov/gocart-mysql:latest

https://hub.docker.com/

