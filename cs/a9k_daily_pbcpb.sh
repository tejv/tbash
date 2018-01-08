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

# ~/py3runtime/bin/python3 ~/tpython/cs/a9k_cruiser.py -pbcdlm -ws $WS_NAME -lu r64x -dev samurai_1 -fboot samurai_2
# ~/py3runtime/bin/python3 ~/tpython/cs/a9k_issu.py -eaxd -dev samurai_1 -v1 6.4.1.27I -v2 6.4.1.26I
# ~/py3runtime/bin/python3 ~/tpython/cs/a9k_cruiser.py -pbcdlm -ws $WS_NAME -lu r62x -dev nirmith_1 -img cxr -scr migrate_to_eXR.yaml
# sh ~/tbash/cs/a9k_script.sh $WS_NAME

set +x
echo "Daily run over"
