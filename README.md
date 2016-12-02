# my-vim-config

Easy way to transfer my vim configuration across multiple machines.

## Installation

Just run `install.sh`. This will automatically do the following:
- Symlink `.vimrc` into your home directory (`vimrc.sh`)
- Create `.vim/colors` directory if none exists, and symlink `BlackSea.vim` into it (`color.sh`)
- Create `.vim/tmp` directory if none exists, for backup/undofile/swapfile storage (`tmp.sh`)
- Create `.vim/autoload` directory if none exists, and install pathogen into it (`pathogen.sh`)
- Create `.vim/bundle` directory if none exists, and install my plugins into it (`plugins.sh`)
- Install YouCompleteMe with Tern support according to its [full installation guide](https://github.com/Valloric/YouCompleteMe#full-installation-guide) (`youcompleteme.sh`)
- Symlink `.tern-config` into your home directory (`tern.sh`)

The [YouCompleteMe plugin](https://github.com/Valloric/YouCompleteMe) requires a relatively complicated installation, so the script may fail in some cases. Please install manually in such cases.

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is licensed under the Unlicense and is entirely under public domain.
