#!/bin/bash

echo "Pull and build started"
sh ~/teju/bash/pull_new_asr9k.sh $1 $2
sh ~/teju/bash/build_n_load_tftp_asr9k_prod.sh $1
echo "Pull and Build over"
