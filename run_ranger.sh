#!/bin/bash

docker run -it --rm -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v /home:/home -u $(id -u):$(id -g) -w=$(pwd) lukaswoodtli/ranger

