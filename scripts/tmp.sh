#!/usr/bin/env bash

if [ ! -d "$HOME/.vim" ]; then
  mkdir "$HOME/.vim"
fi

if [ ! -d "$HOME/.vim/tmp" ]; then
  mkdir "$HOME/.vim/tmp"
fi
