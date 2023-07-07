-- VIM PARITY --

-- include Vim config in runtimepath
vim.opt.runtimepath:prepend { '~/.vim' }
vim.opt.runtimepath:append { '~/.vim/after' }
vim.opt.packpath = vim.opt.runtimepath:get()

-- source main vimrc
vim.cmd('source ~/.vim/vimrc')

-- NEOVIM-SPECIFIC --

-- always use a block cursor
vim.opt.guicursor = { 'a:block' }

-- set up mappings for traversing diagnostics
vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[e', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']e', vim.diagnostic.goto_next)
