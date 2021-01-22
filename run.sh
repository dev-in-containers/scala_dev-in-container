#!/usr/bin/env bash
cd `dirname $0`

if [ "$#" -ne 0 ]
then
  SRC=$1
else
  SRC=src
fi

MOUNT=$(realpath $SRC)

docker run --rm -v ${MOUNT}:/home/developer/src -it --name scala scala /usr/bin/fish
