#!/bin/bash

#set -x

SAVE_FILE=~/.saved_paths
if [ ! -f $SAVE_FILE ]; then
    touch $SAVE_FILE
fi

while read p; do
    echo $p
done <$SAVE_FILE

#set +x
