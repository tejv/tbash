#!/bin/bash

# Saves directory path or file path
#set -x

SAVE_FILE=~/.saved_paths
if [ ! -f $SAVE_FILE ]; then
    touch $SAVE_FILE
fi

if [ -z "$1" ]; then
    echo "$(pwd)" >> $SAVE_FILE
else
    echo "$(pwd)/$1" >> $SAVE_FILE
fi
#set +x

