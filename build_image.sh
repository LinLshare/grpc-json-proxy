#!/bin/bash -e

IMAGE_STAGE=stable
APP=grpc-json-proxy
VERSION=0.0.1
IMAGE_REPO=lshare/grpc-json-proxy
DATE="$(date +%Y%m%d%H%M)"
## 构建镜像
./build.sh
docker build -t ${APP} . --no-cache=true
## 确定镜像标签
IMAGE_TAG=${VERSION}-${DATE}

## 发布镜像
docker tag ${APP} ${IMAGE_REPO}:${IMAGE_TAG}
docker push ${IMAGE_REPO}:${IMAGE_TAG}

docker tag ${APP} ${IMAGE_REPO}:${IMAGE_STAGE}
docker push ${IMAGE_REPO}:${IMAGE_STAGE}
