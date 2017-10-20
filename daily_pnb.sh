#!/bin/bash

echo "Daily run"
set -x
sh ~/teju/bash/pull_n_build_asr9k.sh $(date -d "today" +"%d%m%Y")_ws
set +x
echo "Pull and Build over"
