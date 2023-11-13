#!/bin/bash

#création des volume
mkdir /tmp/vault

docker build -t orsonivault:0.0.1 vault -f vault/Dockerfile
docker network create bddnetwork