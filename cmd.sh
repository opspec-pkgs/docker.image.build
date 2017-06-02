#!/bin/sh

echo "starting docker daemon"
nohup dockerd \
--host=unix:///var/run/docker.sock \
--host=tcp://0.0.0.0:2375 \
--storage-driver=vfs &

echo ""
sleep 2

echo "building image"
docker image build -t "$imageName" /buildContext

echo "saving image"
docker image save $imageName > image.tar