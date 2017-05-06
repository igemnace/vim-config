#!/usr/bin/env bash

### CODE
mkdir -p "$HOME/.vim/pack/code/start"
mkdir -p "$HOME/.vim/pack/code/opt"

# START
cd "$HOME/.vim/pack/code/start"
git clone https://github.com/elzr/vim-json.git
git clone https://github.com/freitass/todo.txt-vim.git
git clone https://github.com/mattn/emmet-vim
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/w0rp/ale.git

# OPT
cd "$HOME/.vim/pack/code/opt"
git clone https://github.com/dhruvasagar/vim-table-mode.git
git clone https://github.com/ternjs/tern_for_vim.git
### END CODE

### EXTEND
mkdir -p "$HOME/.vim/pack/extend/start"
mkdir -p "$HOME/.vim/pack/extend/opt"

# START
cd "$HOME/.vim/pack/extend/start"
git clone git://github.com/tpope/vim-abolish.git
git clone git://github.com/tpope/vim-repeat.git
git clone git://github.com/tpope/vim-rsi.git
git clone git://github.com/tpope/vim-speeddating.git
git clone https://github.com/FooSoft/vim-argwrap
git clone https://github.com/jiangmiao/auto-pairs.git
git clone https://github.com/maxbrunsfeld/vim-yankstack.git
git clone https://github.com/skywind3000/asyncrun.vim.git
git clone https://github.com/tpope/vim-commentary.git
git clone https://github.com/tpope/vim-dispatch.git
git clone https://github.com/tpope/vim-endwise
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/tpope/vim-unimpaired.git

# OPT
cd "$HOME/.vim/pack/extend/opt"
git clone https://github.com/Konfekt/FastFold.git
git clone https://github.com/sjl/gundo.vim
git clone https://github.com/tpope/vim-sleuth.git
### END EXTEND

### FILENAV
mkdir -p "$HOME/.vim/pack/filenav/start"

# START
cd "$HOME/.vim/pack/filenav/start"
git clone https://github.com/junegunn/fzf.vim.git
git clone https://github.com/tpope/vim-vinegar.git
### END FILENAV

### INTEGRATE
mkdir -p "$HOME/.vim/pack/integrate/start"
mkdir -p "$HOME/.vim/pack/integrate/opt"

# START
cd "$HOME/.vim/pack/integrate/start"
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/christoomey/vim-tmux-navigator.git
git clone https://github.com/tpope/vim-eunuch.git
git clone https://github.com/tpope/vim-fugitive.git

# OPT
cd "$HOME/.vim/pack/integrate/opt"
git clone https://github.com/jpalardy/vim-slime.git
### END INTEGRATE

### THEME
mkdir -p "$HOME/.vim/pack/theme/start"
mkdir -p "$HOME/.vim/pack/theme/opt"

# START
cd "$HOME/.vim/pack/theme/start"
git clone https://github.com/chriskempson/base16-vim.git

# OPT
cd "$HOME/.vim/pack/theme/opt"
git clone https://github.com/ap/vim-css-color.git
### END THEME
