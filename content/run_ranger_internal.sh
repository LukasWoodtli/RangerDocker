#!/bin/bash -l

mkdir -p $HOME/.config/ranger/

ranger --choosedir=$HOME/.config/ranger/.rangerdir "$@"

