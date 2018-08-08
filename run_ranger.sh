#!/bin/bash

set -u
set -e

dockerContainer="docker.io/lukaswoodtli/ranger"

docker run -it --rm -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v /home:/home -u $(id -u):$(id -g) -w=$(pwd) $dockerContainer "$@"
LASTDIR=`cat $HOME/.config/ranger/.rangerdir`
cd "$LASTDIR"

