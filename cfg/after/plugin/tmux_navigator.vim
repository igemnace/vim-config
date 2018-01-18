" handle Meta keys in terminal
if !has('gui_running')
  silent! execute "set <M-h>=\<Esc>h"
  silent! execute "set <M-j>=\<Esc>j"
  silent! execute "set <M-k>=\<Esc>k"
  silent! execute "set <M-l>=\<Esc>l"
endif

" map Meta keys for tmux-navigator
nnoremap <silent> <M-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <M-j> :TmuxNavigateDown<CR>
nnoremap <silent> <M-k> :TmuxNavigateUp<CR>
nnoremap <silent> <M-l> :TmuxNavigateRight<CR>
tnoremap <silent> <M-h> <C-w>:TmuxNavigateLeft<CR>
tnoremap <silent> <M-j> <C-w>:TmuxNavigateDown<CR>
tnoremap <silent> <M-k> <C-w>:TmuxNavigateUp<CR>
tnoremap <silent> <M-l> <C-w>:TmuxNavigateRight<CR>
