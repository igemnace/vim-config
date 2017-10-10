" map meta keys for tmux-navigator
silent! execute 'set <F31>=\<Esc>h'
silent! execute 'set <F32>=\<Esc>j'
silent! execute 'set <F33>=\<Esc>k'
silent! execute 'set <F34>=\<Esc>l'
nnoremap <silent> <M-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <M-j> :TmuxNavigateDown<CR>
nnoremap <silent> <M-k> :TmuxNavigateUp<CR>
nnoremap <silent> <M-l> :TmuxNavigateRight<CR>
nmap <F31> <M-h>
nmap <F32> <M-j>
nmap <F33> <M-k>
nmap <F34> <M-l>
