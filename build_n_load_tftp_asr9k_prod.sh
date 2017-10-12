#!/bin/bash

echo "Build and load started"
set -x
cd /nobackup/tsheoran/dev/"$1"/
jam -l -d0 -j64 asr9k-mini-x64.iso > /dev/null
cp /nobackup/tsheoran/dev/"$1"/img-asr9k/asr9k-mini-x64.iso /auto/tftp-blr-users4/tsheoran/.
/auto/ses/bin/run_sa
ctags -R
set +x
echo "Build and load over"
