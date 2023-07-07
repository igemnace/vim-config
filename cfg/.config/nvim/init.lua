-- source main vimrc
vim.cmd('source ~/.vim/vimrc')

-- set up neovim-specific config

vim.opt.directory = { '~/.config/nvim/tmp//', '.' }
vim.opt.backupdir = { '~/.config/nvim/tmp//', '.' }
vim.opt.undodir = { '~/.config/nvim/tmp//', '.' }
