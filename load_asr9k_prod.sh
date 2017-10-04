#!/bin/bash

echo "load started"
set -x
cp /nobackup/tsheoran/dev/"$1"/img-asr9k/asr9k-mini-x64.iso /auto/tftp-blr-users4/tsheoran/.
set +x
echo "load over"

