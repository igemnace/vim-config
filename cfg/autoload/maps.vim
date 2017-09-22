" map keys for Emmet.vim
function! maps#MapEmmet() abort
  imap <buffer> <C-@>xe <Plug>(emmet-expand-abbr)
  imap <buffer> <C-@>xn <Plug>(emmet-move-next)
  imap <buffer> <C-@>xN <Plug>(emmet-move-prev)
  imap <buffer> <C-@>xj <Plug>(emmet-split-join-tag)
endfunction
