#!/usr/bin/env bash

set -e

cd ..


case "$1" in
    --up)
        set -a
        source $PWD/.env
        set +a
        docker compose -f docker/docker-compose.yml up --build --remove-orphans --force-recreate
        echo "Containers is running"
    ;;

    --up-detached)
        set -a
        source $PWD/.env
        set +a
        docker compose -f docker/docker-compose.yml up -d --build --remove-orphans --force-recreate
        echo "Containers is running"
    ;;
    
    --down)
        set -a
        source $PWD/.env
        set +a
        docker compose -f docker/docker-compose.yml down
        echo "Containers is down"
    ;;
esac