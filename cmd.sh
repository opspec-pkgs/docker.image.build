#!/bin/sh

set -e

echo "starting docker daemon"
dockerd \
--host=unix:///var/run/docker.sock \
--host=tcp://0.0.0.0:2375 \
--storage-driver=overlay2

# poll until docker daemon reachable
n=0
until [ $n -ge 3 ]
do
  docker ps && break
  n=$((n+1))
  sleep 3
done

echo "building image"
docker image build -t "$imageName" /buildContext

echo "saving image"
docker image save $imageName > /image.tar
