#!/bin/bash

source ~/.bash_profile

set -x
/router/bin/python ~/tpython/cs/a9k_build.py "$@"
/router/bin/python ~/tpython/cs/a9k_ctftp.py "$@"
/router/bin/python ~/tpython/cs/a9k_post_build.py "$@"
/router/bin/python ~/tpython/cs/a9k_clear_line.py "$@"
/router/bin/python ~/tpython/cs/a9k_boot.py "$@"
/router/bin/python ~/tpython/cs/a9k_conf_mgmt.py "$@"
set +x
