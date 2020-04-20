#!/bin/bash -e

IMAGE_STAGE=stable
APP=grpc-json-proxy
VERSION=0.0.1
PORT=7001
IMAGE_REPO=lshare/grpc-json-proxy
DATE="$(date +%Y%m%d%H%M)"

docker run -p ${PORT}:${PORT} \
             --name ${APP} \
             -d ${IMAGE_REPO}:${IMAGE_STAGE}
