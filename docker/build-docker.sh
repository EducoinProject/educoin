#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-educoinpay/educoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/educoind docker/bin/
cp $BUILD_DIR/src/educoin-cli docker/bin/
cp $BUILD_DIR/src/educoin-tx docker/bin/
strip docker/bin/educoind
strip docker/bin/educoin-cli
strip docker/bin/educoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
