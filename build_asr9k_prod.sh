#!/bin/bash

echo "Build started"
set -x
cd /nobackup/tsheoran/dev/"$1"/
jam -l -d0 -j64 asr9k-mini-x64.iso
echo "Running static analysis"
/auto/ses/bin/run_sa
set +x
echo "Build over"

