include .env

build_all: elasticsearch_build kibana_build logstash_build

elasticsearch_build:
	docker build \
		--build-arg FTP_USER=${FTP_USER} \
		--build-arg FTP_PASS=${FTP_PASS} \
		--build-arg FTP_PATH_ELASTIC=${FTP_PATH_ELASTIC} \
		--platform linux/amd64 \
		--no-cache \
		-f ./elasticsearch/Dockerfile \
		-t elasticsearch:8.12.2 .

kibana_build:
	docker build \
		--build-arg FTP_USER=${FTP_USER} \
		--build-arg FTP_PASS=${FTP_PASS} \
		--build-arg FTP_PATH_KIBANA=${FTP_PATH_KIBANA} \
		--platform linux/amd64 \
		--no-cache \
		-f ./kibana/Dockerfile \
		-t kibana:8.12.2 .

logstash_build:
	docker build \
		--build-arg FTP_USER=${FTP_USER} \
		--build-arg FTP_PASS=${FTP_PASS} \
		--build-arg FTP_PATH_LOGSTASH=${FTP_PATH_LOGSTASH} \
		--platform linux/amd64 \
		--no-cache \
		-f ./logstash/Dockerfile \
		-t logstash:8.12.2 .
