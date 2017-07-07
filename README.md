# my-vim-config

Easy way to transfer my Vim configuration across multiple machines.

## Pre-Installation

Make sure that your machine satisfies the following:
- Is using GNU/Linux (scripts are untested on other UNIX systems and will
  flat-out fail on Windows)
- Has Vim 8 or higher (required by ALE and completor.vim for async jobs, and by
  the plugin install script for the new package system), with support for Python
  2 or Python 3 scripting (required by completor.vim)
- Has no pre-existing `.vimrc` (backup and remove if existing)
- Has env, bash, and git (required by install scripts)
- Has a working internet connection (will be cloning git repos for plugin
  installation)
- Has Node.js and npm (required by ESLint and Tern)

## Installation

Just run `./install`. This will automatically do the following:
- Symlink `.vimrc` into your home directory (`install-vimrc`)
- Symlink all of the contents of `.vim` into your home directory (`install-vim`)
- Create `.vim/tmp` directory if none exists, for backup/undofile/swapfile
  storage (`install-tmp`)
- Create `.vim/pack` directory if none exists, and install my plugin packages
  into it (`install-plugins`)
- Install ESLint with React plugins (`install-eslint`)
- Symlink `.eslintrc` into your home directory (`install-eslintrc`)
- Install completor.vim and `make` for Tern support (`install-completor`)
- Symlink `.tern-config` into your home directory (`install-tern`)

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is licensed under the Unlicense and is entirely under public
domain.
