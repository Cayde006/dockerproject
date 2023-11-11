#!/bin/bash

#création des volume
mkdir /tmp/web
mkdir /tmp/database

docker build -t orsoniwebapp:0.0.1 webapp -f webapp/Dockerfile
docker build -t orsonidatabase:0.0.1 database -f database/Dockerfile