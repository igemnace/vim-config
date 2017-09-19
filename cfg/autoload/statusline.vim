" displays the buffer name applied with pathshorten()
function! statusline#bufnameshort()
  return pathshorten(expand('%:~:.'))
endfunction

" displays a flag if there are unseen quickfix errors
function! statusline#quickfix()
  return get(g:, 'quickfix_pending') ? '[Q]' : ''
endfunction
