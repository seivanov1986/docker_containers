FROM ubuntu:22.04

RUN apt-get update && apt-get install -y cron docker.io && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["cron", "-f"]
