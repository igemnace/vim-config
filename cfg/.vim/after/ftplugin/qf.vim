" make quickfix easier to parse line for line
setlocal nowrap
setlocal cursorline

" map vim-kickfix actions
nmap <silent><buffer> p <Plug>(KickfixPreview)
nnoremap <silent><buffer> <C-g> :<C-u>QInfo<CR>

" map vim-qf actions
nnoremap <silent><buffer> { <Plug>(qf_previous_file)
nnoremap <silent><buffer> } <Plug>(qf_next_file)
