#!/bin/bash
docker rm orsoniwebapp
docker rm orsonidatabase
docker rmi orsoniwebapp:0.0.1
docker rmi orsonidatabase:0.0.1

docker network rm  bddnetwork
rm -r /tmp/web
rm -r /tmp/database
docker rmi alpine 
docker rmi mysql