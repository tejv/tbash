#!/bin/bash

echo "Pull new work space started"
set -x
cd /nobackup/tsheoran/dev/
mkdir $1
cd /nobackup/tsheoran/dev/"$1"/
if [ -z "$2" ]; then
    acme nw -lineup xr-dev.lu -plat asr9k-px
else
    acme nw -lineup xr-dev.lu%EFR-$2 -plat asr9k-px
fi
set +x
echo "Pull new workspace over"
