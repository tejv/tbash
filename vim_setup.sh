#!/bin/bash

echo "Are you sure curl, git, vim, ctags, cscope and spf-13 are installed(y/n):"
read input
if [ $input == "y" ]; then
    set -x
    cd ~
    rm .vimrc.local
    rm .vimrc.before.local
    rm .vimrc.bundles.local
    git clone https://github.com/tejv/vim.git
    ln -s ~/vim/lean/.vimrc.local .vimrc.local
    ln -s ~/vim/lean/.vimrc.before.local .vimrc.before.local
    ln -s ~/vim/lean/.vimrc.bundles.local .vimrc.bundles.local
    set +x
    echo "Vim setup complete"
else
    echo "spf13 cmd"
    echo "curl http://j.mp/spf13-vim3 -L -o - | sh"
    echo "Please install dependencies first"
fi
