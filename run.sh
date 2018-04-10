#!/bin/bash

mkdir -p /opt/docker/zbox/data > /dev/null 2>&1

docker run -d -p 8085:8080 \
    -v /etc/localtime:/etc/localtime:ro \
    -v /opt/docker/zbox/data:/opt/zbox/data \
    -e TZ="Asia/Shanghai" \
    --name zentao \
    --restart always \
    x000zh/docker-zentao
