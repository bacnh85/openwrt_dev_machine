#!/bin/bash

# Start Docker
docker-compose up -d
docker exec -it openwrt-ubuntu14.04-dev /bin/bash
