#!/bin/bash

docker build -t "chris/nodejs_microservice" .
docker run -d --name nodejs_microservice -p 9977:9977 chris/nodejs_microservice

