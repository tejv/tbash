#!/bin/bash

source ~/.bash_profile
echo "Generating patch and copying"
set -x

if [ -z "$1" ]; then
    set +x
    echo "Please provide patch name"
    exit 1
fi

acme diff > /nobackup/tsheoran/tmac/patch/$1

set +x
echo "Patch copy over"

