#!/bin/bash

if [ "$1" = "up" ]; then
    docker-compose up -d --build
elif [ "$2" = "down" ]; then
    bash "docker container stop $(docker ps -aq)"
    bash "docker container rm $(docker ps -aq)"
fi
docker ps
