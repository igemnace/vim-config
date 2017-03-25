#!/usr/bin/env bash

cd "$HOME/.vim/pack/code/opt"
git clone https://github.com/maralla/completor.vim.git
cd completor.vim
make js
