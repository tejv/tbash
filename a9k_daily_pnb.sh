#!/bin/bash

source ~/.bash_profile
echo "Daily run"
set -x
sh ~/tbash/a9k_pull_n_build.sh $(date -d "today" +"%d%m%Y")_ws
set +x
echo "Daily run over"
