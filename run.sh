#!/bin/bash

# mkdir -p /opt/docker/zbox/data/mysql > /dev/null 2>&1

base_path=`pwd`

docker run -d -p 8085:8080 \
    -v /etc/localtime:/etc/localtime:ro \
    -v $base_path/zbox:/opt/zbox \
    -e TZ="Asia/Shanghai" \
    --name zentao \
    'x000zh/docker-zentao' bash /opt/run.sh
