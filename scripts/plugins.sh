#!/usr/bin/env bash

if [ ! -d "$HOME/.vim" ]; then
  mkdir "$HOME/.vim"
fi

if [ ! -d "$HOME/.vim/bundle" ]; then
  mkdir "$HOME/.vim/bundle"
fi

# NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# fzf.vim
git clone https://github.com/junegunn/fzf.vim.git ~/.vim/bundle/fzf.vim

# vim-airline
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline

# vim-airline-themes
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

# base16-vim
git clone https://github.com/chriskempson/base16-vim.git ~/.vim/bundle/base16-vim

# ale
git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale

# codi.vim
git clone https://github.com/metakirby5/codi.vim.git ~/.vim/bundle/codi.vim

# vim-obsession
git clone https://github.com/tpope/vim-obsession.git ~/.vim/bundle/vim-obsession

# vim-gitgutter
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

# vim-fugitive
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

# vim-tmux-navigator
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/bundle/vim-tmux-navigator

# vim-eunuch
git clone https://github.com/tpope/vim-eunuch.git ~/.vim/bundle/vim-eunuch

# emmet-vim
git clone https://github.com/mattn/emmet-vim ~/.vim/bundle/emmet-vim

# vim-surround
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround

# vim-commentary
git clone https://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary

# vim-unimpaired
git clone https://github.com/tpope/vim-unimpaired.git ~/.vim/bundle/vim-unimpaired

# vim-speeddating
git clone git://github.com/tpope/vim-speeddating.git ~/.vim/bundle/vim-speeddating

# vim-abolish
git clone git://github.com/tpope/vim-abolish.git ~/.vim/bundle/vim-abolish

# vim-repeat
git clone git://github.com/tpope/vim-repeat.git ~/.vim/bundle/vim-repeat

# vim-yankstack
git clone https://github.com/maxbrunsfeld/vim-yankstack.git ~/.vim/bundle/vim-yankstack

# auto-pairs
git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

# vim-argwrap
git clone https://github.com/FooSoft/vim-argwrap ~/.vim/bundle/vim-argwrap

# vim-rsi
git clone git://github.com/tpope/vim-rsi.git ~/.vim/bundle/vim-rsi

# vim-sleuth
git clone https://github.com/tpope/vim-sleuth.git ~/.vim/bundle/vim-sleuth

# todo.txt-vim
git clone https://github.com/freitass/todo.txt-vim.git ~/.vim/bundle/todo.txt-vim

# vim-javascript
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

# vim-json
git clone https://github.com/elzr/vim-json.git ~/.vim/bundle/vim-json

# vim-jsx
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/vim-jsx

# vim-css-color
git clone https://github.com/ap/vim-css-color.git ~/.vim/bundle/vim-css-color
