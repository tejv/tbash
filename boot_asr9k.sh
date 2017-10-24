#!/bin/bash

echo "Boot image started"
set -x
/router/bin/python ~/tpython/clear_line.py "$@"
/router/bin/python ~/tpython/boot_asr9k.py "$@"
set +x
echo "Boot image over"
