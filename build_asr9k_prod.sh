#!/bin/bash

echo "Build started"
set -x
cd /nobackup/tsheoran/dev/"$1"/
jam -l -d0 -j64 asr9k-mini-x64.iso
set +x
echo "Build over"

sh ~/tbash/build_post_process.sh $1

