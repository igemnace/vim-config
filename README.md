# my-vim-config

Easy way to transfer my Vim configuration across multiple machines.

## Pre-Installation

Make sure that your machine satisfies the following:
- Is using GNU/Linux (scripts are untested on other UNIX systems and will
  flat-out fail on Windows)
- Preferably has Vim 8 or higher (for async jobs and package system)
  - If installing on versions lower than Vim 8, installing [tpope's pathogen][1]
    will take care of loading the plugins in start directories in place of the
    package system
- Has no pre-existing `.vimrc` (backup and remove if existing)
- Has env, bash, and git (required by install scripts)
- Has a working internet connection (will be cloning git repos for plugin
  installation)

[1]: https://github.com/tpope/vim-pathogen

## Installation

Just run `./install` from the repository's root directory. This will
automatically do the following:
- Symlink all of the contents of `.vim` into your home directory (`install-vim`)
- Create `.vim/pack` directory if none exists, and install my plugin packages
  into it (`install-plugins`)

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is open source, licensed under MIT, with the exception of the
following files:

- `cfg/plugin/impaired.vim`: licensed under the Vim license, see header

Do you remember this project being Unlicensed? Read more about the license
change [here][license-change].

[license-change]: https://github.com/igemnace/dotfiles/issues/2
