#!/bin/bash

source ~/.bash_profile
echo "Daily run"
set -x
WS_NAME=$(date -d "today" +"%d%m%Y")_ws
/router/bin/python ~/tpython/cs/a9k_pull.py -w $WS_NAME
/router/bin/python ~/tpython/cs/a9k_build.py -w $WS_NAME
/router/bin/python ~/tpython/cs/a9k_ctftp.py -w $WS_NAME
/router/bin/python ~/tpython/cs/a9k_post_build.py -w $WS_NAME -f
/router/bin/python ~/tpython/cs/a9k_clear_line.py
/router/bin/python ~/tpython/cs/a9k_boot.py
/router/bin/python ~/tpython/cs/a9k_conf_mgmt.py
set +x
echo "Daily run over"
