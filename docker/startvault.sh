#!/bin/bash
docker run --name orsonivault --volume /tmp/vault --network bddnetwork -p 8200:8200 -d orsonivault:0.0.1