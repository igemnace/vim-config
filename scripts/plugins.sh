#!/usr/bin/env bash

if [ ! -d "$HOME/.vim" ]; then
  mkdir "$HOME/.vim"
fi
if [ ! -d "$HOME/.vim/pack" ]; then
  mkdir "$HOME/.vim/pack"
fi

### CODE
if [ ! -d "$HOME/.vim/pack/code" ]; then
  mkdir "$HOME/.vim/pack/code"
fi
if [ ! -d "$HOME/.vim/pack/code/start" ]; then
  mkdir "$HOME/.vim/pack/code/start"
fi
if [ ! -d "$HOME/.vim/pack/code/opt" ]; then
  mkdir "$HOME/.vim/pack/code/opt"
fi

# START
cd "$HOME/.vim/pack/code/start"
git clone https://github.com/w0rp/ale.git
git clone https://github.com/mattn/emmet-vim
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/elzr/vim-json.git
git clone https://github.com/mxw/vim-jsx.git

# OPT
cd "$HOME/.vim/pack/code/opt"
git clone https://github.com/freitass/todo.txt-vim.git
### END CODE

### EXTEND
if [ ! -d "$HOME/.vim/pack/extend" ]; then
  mkdir "$HOME/.vim/pack/extend"
fi
if [ ! -d "$HOME/.vim/pack/extend/start" ]; then
  mkdir "$HOME/.vim/pack/extend/start"
fi
if [ ! -d "$HOME/.vim/pack/extend/opt" ]; then
  mkdir "$HOME/.vim/pack/extend/opt"
fi

# START
cd "$HOME/.vim/pack/extend/start"
git clone https://github.com/vim-scripts/auto-pairs-gentle.git
git clone https://github.com/tpope/vim-endwise
git clone git://github.com/tpope/vim-abolish.git
git clone https://github.com/FooSoft/vim-argwrap
git clone https://github.com/tpope/vim-commentary.git
git clone git://github.com/tpope/vim-repeat.git
git clone git://github.com/tpope/vim-rsi.git
git clone https://github.com/tpope/vim-sleuth.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/tpope/vim-unimpaired.git
git clone https://github.com/maxbrunsfeld/vim-yankstack.git
git clone git://github.com/tpope/vim-speeddating.git

# OPT
cd "$HOME/.vim/pack/extend/opt"
git clone https://github.com/sjl/gundo.vim
git clone https://github.com/tpope/vim-dispatch.git
### END EXTEND

### FILENAV
if [ ! -d "$HOME/.vim/pack/filenav" ]; then
  mkdir "$HOME/.vim/pack/filenav"
fi
if [ ! -d "$HOME/.vim/pack/filenav/start" ]; then
  mkdir "$HOME/.vim/pack/filenav/start"
fi

# START
cd "$HOME/.vim/pack/filenav/start"
git clone https://github.com/junegunn/fzf.vim.git
git clone https://github.com/tpope/vim-vinegar.git
### END FILENAV

### INTEGRATE
if [ ! -d "$HOME/.vim/pack/integrate" ]; then
  mkdir "$HOME/.vim/pack/integrate"
fi
if [ ! -d "$HOME/.vim/pack/integrate/start" ]; then
  mkdir "$HOME/.vim/pack/integrate/start"
fi
if [ ! -d "$HOME/.vim/pack/integrate/opt" ]; then
  mkdir "$HOME/.vim/pack/integrate/opt"
fi

# START
cd "$HOME/.vim/pack/integrate/start"
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/christoomey/vim-tmux-navigator.git

# OPT
cd "$HOME/.vim/pack/integrate/opt"
git clone https://github.com/tpope/vim-eunuch.git
git clone https://github.com/jpalardy/vim-slime.git
### END INTEGRATE

### THEME
if [ ! -d "$HOME/.vim/pack/theme" ]; then
  mkdir "$HOME/.vim/pack/theme"
fi
if [ ! -d "$HOME/.vim/pack/theme/start" ]; then
  mkdir "$HOME/.vim/pack/theme/start"
fi
if [ ! -d "$HOME/.vim/pack/theme/opt" ]; then
  mkdir "$HOME/.vim/pack/theme/opt"
fi

# START
cd "$HOME/.vim/pack/theme/start"
git clone https://github.com/chriskempson/base16-vim.git

# OPT
cd "$HOME/.vim/pack/theme/opt"
git clone https://github.com/ap/vim-css-color.git
### END THEME
