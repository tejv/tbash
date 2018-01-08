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

# /router/bin/python ~/tpython/cs/a9k_pull.py -w $WS_NAME
# /router/bin/python ~/tpython/cs/a9k_build.py -w $WS_NAME
# /router/bin/python ~/tpython/cs/a9k_ctftp.py -w $WS_NAME
# /router/bin/python ~/tpython/cs/a9k_post_build.py -w $WS_NAME -f
# /router/bin/python ~/tpython/cs/a9k_clear_line.py
# /router/bin/python ~/tpython/cs/a9k_boot.py
# /router/bin/python ~/tpython/cs/a9k_conf_mgmt.py

# /router/bin/python ~/tpython/cs/a9k_cruiser.py -pbcedlm -ws $WS_NAME -img exr_r62x -dev nirmith_1
# /router/bin/python ~/tpython/cs/a9k_cruiser.py -pbe -ws xrdev_ws -img exr

~/py3runtime/bin/python3 -u ~/tpython/cs/a9k_cruiser.py -dlm -dev samurai_1 -fboot samurai_1 | tee boot.txt
~/py3runtime/bin/python3 -u ~/tpython/cs/a9k_issu.py -e -dev samurai_1 -v1 6.4.1.27I -v2 6.4.1.26I | tee issu.txt


# ~/py3runtime/bin/python3 ~/tpython/cs/a9k_cruiser.py -p -ws $WS_NAME -efr 00000356514
# cd ~/dev/$WS_NAME
# /usr/cisco/bin/acme patch -i /nobackup/tsheoran/tmac/patch/os_xr_sdk
# ~/py3runtime/bin/python3 ~/tpython/cs/a9k_cruiser.py -bcdlmu -ws $WS_NAME -dev tardis
# ~/py3runtime/bin/python3 ~/tpython/cs/a9k_cruiser.py -bc -ws $WS_NAME -img cxr
# ~/py3runtime/bin/python3 ~/tpython/cs/a9k_cruiser.py -dlm -dev nirmith_1 -img cxr -scr migrate_to_eXR

# EWS_NAME=$WS_NAME-exr
# /router/bin/python ~/tpython/cs/a9k_cruiser.py -p -ws $EWS_NAME -img exr_r62x
# cd ~/dev/$EWS_NAME
# /usr/cisco/bin/acme patch -i ~/dev/patch/migrate
# /router/bin/python ~/tpython/cs/a9k_cruiser.py -b -ws $EWS_NAME 
set +x
echo "Daily run over"
