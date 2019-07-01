function! s:activate() abort
  for [root, value] in projectionist#query('argwrap_tail_comma_braces')
    let g:argwrap_tail_comma_braces = value
    break
  endfor
endfunction

augroup AfterProjectionist
  autocmd!
  autocmd User ProjectionistActivate call s:activate()
augroup END
