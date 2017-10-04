#!/bin/bash

# Saves directory path or file path
#set -x

SAVE_FILE=~/.saved_paths
if [ ! -f $SAVE_FILE ]; then
    touch $SAVE_FILE
fi

# LINES=$(wc -l $SAVE_FILE | awk '{print $1}')
LINE_NO=1
if [ -z "$1" ]; then
    while read p; do
        echo "$LINE_NO $p"
        let "LINE_NO++"
    done <$SAVE_FILE
else
    sed "$1q;d" $SAVE_FILE
fi
#set +x

