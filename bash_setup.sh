#!/bin/bash

echo "Setting up bash"
set -x
cd ~
rm .bash_profile
ln -s ~/tbash/.bash_profile .bash_profile
echo "alias sb='source ~/.bash_profile'" >> ~/.bashrc
set +x
echo "bash setup complete, update .bash_profile.local and then type bash"

