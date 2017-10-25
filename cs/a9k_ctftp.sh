#!/bin/bash

echo "Copy from specified workspace to tftp folder"
set -x
cp /nobackup/tsheoran/dev/"$1"/img-asr9k/asr9k-mini-x64.iso /auto/tftp-blr-users4/tsheoran/.
set +x
