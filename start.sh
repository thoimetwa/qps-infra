#!/bin/bash


# pull required docker images
docker pull selenoid/vnc:chrome_66.0
docker pull selenoid/vnc:chrome_65.0
docker pull selenoid/vnc:firefox_59.0
docker pull selenoid/vnc:firefox_58.0

#-------------- START EVERYTHING ------------------------------
docker-compose up -d
