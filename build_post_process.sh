#!/bin/bash

echo "Build post process"
set -x

BASE_DIR=~/dev/temp/$1/
if [ ! -d "$BASE_DIR" ]; then
  mkdir $BASE_DIR
fi

NEW_DIR='~/dev/temp/$1/$(date -d "today" +"%M%H%d%m%Y")_bk/'
mkdir $NEW_DIR
cd /nobackup/tsheoran/dev/"$1"/
cp /nobackup/tsheoran/dev/"$1"/img-asr9k/asr9k-mini-x64.iso $NEW_DIR/
cp -R /nobackup/tsheoran/dev/"$1"/ctrace_dec/  $NEW_DIR/
acme diff > $NEW_DIR/diff
/auto/ses/bin/run_sa > $NEW_DIR/sa
ctags -R * >& /dev/null
cscope -Rbq
cd calvados/
ctags -R * >& /dev/null
cscope -Rbq
set +x
echo "Build post process over"
