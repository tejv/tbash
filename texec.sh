#!/bin/bash

start_time=`date +%s`
$1 && echo run time is $(expr `date +%s` - $start_time) s

