#!/bin/bash

echo "Build and load started"
set -x
cd /nobackup/tsheoran/dev/"$1"/
jam -l -d0 -j64 asr9k-mini-x64.iso
cp /nobackup/tsheoran/dev/"$1"/img-asr9k/asr9k-mini-x64.iso /auto/tftp-blr-users4/tsheoran/.
set +x
echo "Build and load over"

sh ~/tbash/build_post_process.sh $1
