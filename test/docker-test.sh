#!/bin/bash

SCRIPTDIR=$(cd $(dirname $BASH_SOURCE); pwd)
DIR=$(dirname $SCRIPTDIR)

USER='vscode'
IMAGE="dotfiles-test_$RANDOM"

docker build \
    -f $SCRIPTDIR/Dockerfile \
    --build-arg USER=$USER \
    --build-arg HOME=/home/$USER \
    --build-arg DST=/home/$USER/dotfiles \
    -t $IMAGE . || exit 1

docker run --rm -it $IMAGE
docker image rm $IMAGE
