#!/bin/bash

#run du conteneur de l'apli web

docker run --name orsoniwebapp --volume /tmp/web --network bddnetwork -p 1234:80 -d orsoniwebapp:0.0.1

#run du contneur de la base de donnée

docker run --name orsonidatabase --volume /tmp/database --network bddnetwork -d orsonidatabase:0.0.1