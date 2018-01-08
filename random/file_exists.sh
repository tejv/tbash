#!/usr/bin/bash

isofilecount=$(ls *.iso 2> /dev/null | wc -l)
if [ "$isofilecount" == "0" ]
then
    echo "ISO missing"
    exit 0
fi

echo "ISO present"
