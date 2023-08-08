if !exists('g:loaded_copilot') || g:loaded_copilot
  finish
endif

" set up own mappings
inoremap <silent><script><expr> <C-y> pumvisible() ? "\<C-y>" : copilot#Accept("\<C-y>")
inoremap <silent><script><expr> <C-e> pumvisible() ? "\<C-e>" : "\<Plug>(copilot-dismiss)"
