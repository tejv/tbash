#!/bin/bash

WS_DIR=/nobackup/tsheoran/dev/$1
TMP_DIR=/nobackup/tsheoran/dev/temp/$1
echo "Removing WS $WS and $TMPDIR permanently. Are you sure[y/n]: "
read userinput
if [ "$userinput" == "y" ]; then
  set -x
  rm -rf $WS_DIR
  rm -rf $TMP_DIR
  set +x
  echo "WS Cleanup over"
  exit(0)
fi

echo "Cancelling operation"
