#!/bin/bash

if [ "$1" = "up" ]; then
    docker-compose up -d --build
elif [ "$1" = "down" ]; then
    # docker container stop $(docker ps -aq)
    # docker container rm $(docker ps -aq)
    docker-compose down
fi
docker ps
