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

echo "Updating tpython repo from origin master"
set -x
cd ~/tpython/
git pull origin master
set +x

