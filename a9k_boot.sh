#!/bin/bash

# -d devname, default='default', help='Device name')
# -t testbed, default='/users/tsheoran/teju/tpython/a9k_testbed.yaml', help='Testbed yaml file')
# -n imagename, default='teju_default', help='Default boot image')
# -i imageinfo, default='/users/tsheoran/teju/tpython/a9k_image_info.yaml'

echo "Boot image started"
set -x
/router/bin/python ~/tpython/a9k_clear_line.py "$@"
/router/bin/python ~/tpython/a9k_boot.py "$@"
/router/bin/python ~/tpython/a9k_conf_mgmt.py "$@"
set +x
echo "Boot image over"
