#!/bin/bash

if [ "$#" -eq 0 ]; then
  echo "Usage: Provide ws name" >&2
  exit 1
fi

echo "Removing following WS and TMP dirs permanently->"
for var in "$@"
do
    WS_DIR=/nobackup/tsheoran/dev/$var
    TMP_DIR=/nobackup/tsheoran/dev/temp/$var
    echo "$WS_DIR, $TMP_DIR"
done

echo "Are you sure[y/n]: "
read userinput

if [ "$userinput" == "y" ]; then
  for var in "$@"
  do
      WS_DIR=/nobackup/tsheoran/dev/$var
      TMP_DIR=/nobackup/tsheoran/dev/temp/$var
      set -x
      rm -rf $WS_DIR
      rm -rf $TMP_DIR
      set +x
  done
  echo "WS Cleanup over"
  exit 0
fi

echo "Cancelling operation"
