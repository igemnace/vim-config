# my-vim-config

Easy way to transfer my vim configuration across multiple machines.

## Pre-Installation

Make sure that your machine satisfies the following:
- Is using GNU/Linux (scripts are untested on other UNIX systems and will flat-out fail on Windows)
- Has vim 7.4.143 or higher, with support for Python 2 or Python 3 scripting (required by YouCompleteMe)
- Has no pre-existing `.vimrc` (backup and remove if existing)
- Has bash and git (required by install scripts)
- Has a working internet connection (will be cloning git repos for plugin installation)
- Has Python headers (distro-dependent package names and installation procedure) and `cmake` (required by YouCompleteMe)
- Has Node.js and npm (required by eslint and Tern support for YouCompleteMe)

## Installation

Just run `install.sh`. This will automatically do the following:
- Symlink `.vimrc` into your home directory (`vimrc.sh`)
- Create `.vim/colors` directory if none exists, and symlink `BlackSea.vim` into it (`color.sh`)
- Create `.vim/tmp` directory if none exists, for backup/undofile/swapfile storage (`tmp.sh`)
- Create `.vim/autoload` directory if none exists, and install pathogen into it (`pathogen.sh`)
- Create `.vim/bundle` directory if none exists, and install my plugins into it (`plugins.sh`)
- Install eslint with React plugins (`eslint.sh`)
- Symlink `.eslintrc` into your home directory (`eslintrc.sh`)
- Install YouCompleteMe with Tern support according to its [full installation guide](https://github.com/Valloric/YouCompleteMe#full-installation-guide) (`youcompleteme.sh`)
- Symlink `.tern-config` into your home directory (`tern.sh`)

The [YouCompleteMe plugin](https://github.com/Valloric/YouCompleteMe) requires a relatively complicated installation, so the script may fail in some cases. Please install manually in such cases.

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is licensed under the Unlicense and is entirely under public domain.
