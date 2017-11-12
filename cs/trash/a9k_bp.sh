#!/bin/bash

source ~/.bash_profile

set -x
/router/bin/python ~/tpython/cs/a9k_build.py "$@"
/router/bin/python ~/tpython/cs/a9k_post_build.py "$@"
set +x
