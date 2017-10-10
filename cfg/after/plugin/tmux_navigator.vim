" map Meta keys for tmux-navigator
nnoremap <silent> <M-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <M-j> :TmuxNavigateDown<CR>
nnoremap <silent> <M-k> :TmuxNavigateUp<CR>
nnoremap <silent> <M-l> :TmuxNavigateRight<CR>

" handle Meta keys in terminal
if !has('gui_running')
  silent! execute 'set <F31>=h'
  silent! execute 'set <F32>=j'
  silent! execute 'set <F33>=k'
  silent! execute 'set <F34>=l'
  nmap <F31> <M-h>
  nmap <F32> <M-j>
  nmap <F33> <M-k>
  nmap <F34> <M-l>
endif
