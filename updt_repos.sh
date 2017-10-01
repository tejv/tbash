#!/bin/bash

echo "Updating vim repo from origin master"
set -x
cd ~/vim/
git pull origin master
set +x

echo "Updating tbash repo from origin master"
set -x
cd ~/tbash/
git pull origin master
set +x

