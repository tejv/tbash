#!/bin/bash

echo "Build started"
set -x
cd /nobackup/tsheoran/dev/"$1"/
jam -l -d0 -j64 asr9k-mini-x64.iso > /dev/null
cp /nobackup/tsheoran/dev/"$1"/img-asr9k/asr9k-mini-x64.iso ~/dev/temp/.
/auto/ses/bin/run_sa
ctags -R  * >& /dev/null
cd calvados/
ctags -R * >& /dev/null
set +x
echo "Build over"

