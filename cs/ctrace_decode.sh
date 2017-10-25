#!/bin/bash

# Make sure ctrace_dec folder from workspace is copied in cdecoder folder
# Make sure ctrace.tgz is also copied in cdecoder.
echo "Ctrace decode start"
set -x
cd /nobackup/tsheoran/dev/cdecoder/
/ws/vnadig-sjc/extract_ctrace.sh $1 0_0 all
# /ws/vnadig-sjc/extract_ctrace.sh $1 0_1 all
export CTRACE_PATH=*.UTC/0_0/var/log/ctrace/
export CTRACE_DEC_PATH=ctrace_dec/x86_64/
/nobackup/tsheoran/dev/$2/tools/ctrace/bin/ctrace_dec -sktHTd $3

set +x
echo "Ctrace decode over"
