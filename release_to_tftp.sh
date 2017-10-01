#!/bin/bash

echo "Copy from release folder  to tftp folder"
set -x
cp /auto/tftp-rtp-viking/release/asr9k-mini-x64-*.iso /auto/tftp-blr-users4/tsheoran/asr9k-mini-x64.iso
set +x
