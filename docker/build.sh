#!/bin/bash

#création des volume
mkdir /tmp/web
mkdir /tmp/database
#gestion des droits sur les fichier

docker build -t orsoniwebapp:0.0.1 webapp
docker build -t orsonidatabase:0.0.1 database