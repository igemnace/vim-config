#!/usr/bin/env bash

### FUNCTIONS
bg_clone() {
  >&2 echo "Cloning $1..."
  git clone $1 &>/dev/null &
}

### CODE
mkdir -p "$HOME/.vim/pack/code/start"
mkdir -p "$HOME/.vim/pack/code/opt"

# START
cd "$HOME/.vim/pack/code/start"
bg_clone https://github.com/elzr/vim-json.git
bg_clone https://github.com/freitass/todo.txt-vim.git
bg_clone https://github.com/mattn/emmet-vim
bg_clone https://github.com/mxw/vim-jsx.git
bg_clone https://github.com/pangloss/vim-javascript.git
bg_clone https://github.com/w0rp/ale.git
bg_clone https://github.com/vimwiki/vimwiki.git

# OPT
cd "$HOME/.vim/pack/code/opt"
bg_clone https://github.com/dhruvasagar/vim-table-mode.git
bg_clone https://github.com/ternjs/tern_for_vim.git
### END CODE

### EXTEND
mkdir -p "$HOME/.vim/pack/extend/start"
mkdir -p "$HOME/.vim/pack/extend/opt"

# START
cd "$HOME/.vim/pack/extend/start"
bg_clone git://github.com/tpope/vim-abolish.git
bg_clone git://github.com/tpope/vim-repeat.git
bg_clone git://github.com/tpope/vim-rsi.git
bg_clone git://github.com/tpope/vim-speeddating.git
bg_clone https://github.com/FooSoft/vim-argwrap
bg_clone https://github.com/jiangmiao/auto-pairs.git
bg_clone https://github.com/maxbrunsfeld/vim-yankstack.git
bg_clone https://github.com/skywind3000/asyncrun.vim.git
bg_clone https://github.com/tpope/vim-commentary.git
bg_clone https://github.com/tpope/vim-dispatch.git
bg_clone https://github.com/tpope/vim-endwise
bg_clone https://github.com/tpope/vim-surround.git
bg_clone https://github.com/tpope/vim-unimpaired.git

# OPT
cd "$HOME/.vim/pack/extend/opt"
bg_clone https://github.com/Konfekt/FastFold.git
bg_clone https://github.com/sjl/gundo.vim
bg_clone https://github.com/tpope/vim-sleuth.git
### END EXTEND

### FILENAV
mkdir -p "$HOME/.vim/pack/filenav/start"

# START
cd "$HOME/.vim/pack/filenav/start"
bg_clone https://github.com/junegunn/fzf.vim.git
bg_clone https://github.com/tpope/vim-vinegar.git
### END FILENAV

### INTEGRATE
mkdir -p "$HOME/.vim/pack/integrate/start"
mkdir -p "$HOME/.vim/pack/integrate/opt"

# START
cd "$HOME/.vim/pack/integrate/start"
bg_clone https://github.com/airblade/vim-gitgutter.git
bg_clone https://github.com/christoomey/vim-tmux-navigator.git
bg_clone https://github.com/tommcdo/vim-fubitive.git
bg_clone https://github.com/tpope/vim-eunuch.git
bg_clone https://github.com/tpope/vim-fugitive.git
bg_clone https://github.com/tpope/vim-rhubarb.git

# OPT
cd "$HOME/.vim/pack/integrate/opt"
bg_clone https://github.com/jpalardy/vim-slime.git
### END INTEGRATE

### THEME
mkdir -p "$HOME/.vim/pack/theme/start"
mkdir -p "$HOME/.vim/pack/theme/opt"

# START
cd "$HOME/.vim/pack/theme/start"
bg_clone https://github.com/chriskempson/base16-vim.git

# OPT
cd "$HOME/.vim/pack/theme/opt"
bg_clone https://github.com/ap/vim-css-color.git
### END THEME

wait
>&2 echo "Done."
