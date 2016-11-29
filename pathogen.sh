#!/usr/bin/env bash

if [ ! -d "$HOME/.vim" ]; then
  mkdir "$HOME/.vim"
fi

if [ ! -d "$HOME/.vim/autoload" ]; then
  mkdir "$HOME/.vim/autoload"
fi

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
