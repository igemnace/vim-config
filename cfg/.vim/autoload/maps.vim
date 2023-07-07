" map keys for Emmet.vim
function! maps#MapEmmet() abort
  imap <buffer> <C-@>xe <Plug>(emmet-expand-abbr)
  imap <buffer> <C-@>xn <Plug>(emmet-move-next)
  imap <buffer> <C-@>xN <Plug>(emmet-move-prev)
  imap <buffer> <C-@>xj <Plug>(emmet-split-join-tag)
endfunction

" allow macros to run per-line in Visual line mode
function! maps#VisualMacro() abort
  if mode() ==# 'V'
    let l:register = nr2char(getchar())
    return ':normal! @' . l:register . "\<CR>"
  else
    return '@'
  endif
endfunction
