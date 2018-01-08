#!/bin/bash

source ~/.bash_profile
echo "Daily run"
set -x

WS_NAME=""
if [ -z "$1" ]; then
    WS_NAME=$(date -d "today" +"%d%m%Y")_ws
else
    WS_NAME=$1
fi

DEV1=samurai_1
DEV2=samurai_2
VERSION1=6.4.1.21I
VERSION2=6.4.1.22I

~/py3runtime/bin/python3 ~/tpython/cs/a9k_cruiser.py -u -dev $DEV1 -scr issu_xr -ulist "$VERSION1"
~/py3runtime/bin/python3 ~/tpython/cs/a9k_cruiser.py -u -dev $DEV2 -scr issu_xr_commit -ulist "$VERSION1"

set +x


