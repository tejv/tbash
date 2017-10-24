#!/bin/bash

# -d devname, default='brahma', help='Device name')
# -t testbed, default='/users/tsheoran/teju/tpython/asr9k_testbed.yaml', help='Testbed yaml file')

echo "Mgmt config started"
set -x
/router/bin/python ~/tpython/clear_line.py "$@"
/router/bin/python ~/tpython/conf_mgmt_asr9k.py "$@"
set +x
echo "Mgmt config over"
