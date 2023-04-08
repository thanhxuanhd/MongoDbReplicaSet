#!/bin/bash

docker-compose up -d

sleep 5

docker exec mongodb1 sh /scripts/rs-init.sh