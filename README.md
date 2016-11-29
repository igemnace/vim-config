# my-vim-config

Easy way to transfer my vim configuration across multiple machines.

## Installation

Just run `install.sh`. This will automatically do the following:
- Symlink `.vimrc` into your home directory (`vimrc.sh`)
- Create `.vim/colors` directory if none exists, and symlink `BlackSea.vim` into it (`color.sh`)
- Create `.vim/tmp` directory if none exists, for backup/undofile/swapfile storage
- Create `.vim/autoload` directory if none exists, and install pathogen into it (`pathogen.sh`)
- Create `.vim/bundle` directory if none exists, and install my plugins into it (`plugins.sh`)

The [YouCompleteMe plugin](https://github.com/Valloric/YouCompleteMe) requires a more complicated installation, so please install manually for now. Script might come in the near future.

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is licensed under the Unlicense and is entirely under public domain.
