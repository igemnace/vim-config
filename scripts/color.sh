#!/usr/bin/env bash

if [ ! -d "$HOME/.vim" ]; then
  mkdir "$HOME/.vim"
fi

if [ ! -d "$HOME/.vim/colors" ]; then
  mkdir "$HOME/.vim/colors"
fi

ln -s "$PWD/cfg/BlackSea.vim" "$HOME/.vim/colors/BlackSea.vim"
