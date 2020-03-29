#!/bin/bash

# Start Docker
docker-compose up -d
docker exec -it openwrt-dev-machine /bin/bash
