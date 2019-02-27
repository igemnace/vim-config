" make quickfix easier to parse line for line
setlocal nowrap
setlocal cursorline

" map vim-kickfix actions
nmap <silent><buffer> p <Plug>(KickfixPreview)
nnoremap <silent><buffer> <C-g> :<C-u>QInfo<CR>
