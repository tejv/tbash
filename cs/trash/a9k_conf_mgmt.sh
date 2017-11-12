#!/bin/bash

# -d devname, default='brahma', help='Device name')
# -t testbed, default='/users/tsheoran/teju/tpython/asr9k_testbed.yaml', help='Testbed yaml file')

echo "Mgmt config started"
set -x
/router/bin/python ~/tpython/cs/a9k_clear_line.py "$@"
/router/bin/python ~/tpython/cs/a9k_conf_mgmt.py "$@"
set +x
echo "Mgmt config over"
