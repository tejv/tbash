#!/bin/bash

# -d devname, default='brahma', help='Device name')
# -t testbed, default='/users/tsheoran/teju/tpython/asr9k_testbed.yaml', help='Testbed yaml file')
# -n imagename, default='teju_default', help='Default boot image')
# -i imageinfo, default='/users/tsheoran/teju/tpython/image_info.yaml'

echo "Boot image started"
set -x
/router/bin/python ~/tpython/clear_line.py "$@"
/router/bin/python ~/tpython/boot_asr9k.py "$@"
set +x
echo "Boot image over"
