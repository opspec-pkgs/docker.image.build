#!/bin/sh

set -e

echo "starting docker daemon"
nohup dockerd \
  --host=unix:///var/run/docker.sock \
  --storage-driver=overlay &

# poll for docker daemon up
max_retries=3
n=0
until [ $n -ge $max_retries ]
do
  docker ps && break
  n=$((n+1))
  sleep 3
done

if [ "$n" -eq "$max_retries" ]; then
  # assume failed
  cat nohup.out
  exit 1
fi

echo "building image"
docker image build -t "$imageName" /buildContext

echo "saving image"
docker image save $imageName > /image.tar
