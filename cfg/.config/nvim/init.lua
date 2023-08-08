-- VIM PARITY --

-- include Vim config in runtimepath
vim.opt.runtimepath:prepend { '~/.vim' }
vim.opt.runtimepath:append { '~/.vim/after' }
vim.opt.packpath = vim.opt.runtimepath:get()

-- source main vimrc
vim.cmd 'source ~/.vim/vimrc'

-- NEOVIM-SPECIFIC --

-- force disable mouse
vim.opt.mouse = nil

-- force backup dir to be XDG
vim.opt.backupdir = { vim.fn.expand('~/.local/state/nvim/backup//') }

-- always use a block cursor
vim.opt.guicursor = { 'a:block' }

-- set up Insert-mode leader (<C-@> is different from <C-Space> on nvim)
vim.keymap.set('i', '<C-Space>', '<C-@>', { remap = true })
vim.keymap.set('i', '<C-Space><C-Space>', '<Plug>SnipletExpand', { remap = true })

-- set up mappings for traversing diagnostics
vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[e', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']e', vim.diagnostic.goto_next)
