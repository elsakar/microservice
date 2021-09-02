#!/bin/env bash

VERSION=latest
PREFIX=elsakar/challenge-entry 
TAG=$VERSION 

echo "Build Image"
docker build -t $PREFIX:$TAG .

echo "Pushing image to docker"
docker push $PREFIX:$TAG

echo "Running the container"
docker run --rm -p 80:80 $PREFIX:$TAG