#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-kusa/kusad-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/kusad docker/bin/
cp $BUILD_DIR/src/kusa-cli docker/bin/
cp $BUILD_DIR/src/kusa-tx docker/bin/
strip docker/bin/kusad
strip docker/bin/kusa-cli
strip docker/bin/kusa-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
