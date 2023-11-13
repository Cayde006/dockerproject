#!/bin/bash
docker rm orsonivault
docker rmi orsonivault:0.0.1


docker network rm  bddnetwork
rm -r /tmp/vault
