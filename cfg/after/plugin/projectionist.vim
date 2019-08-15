function! s:extract_value (key) abort
  for [root, value] in projectionist#query(a:key)
    return value
  endfor
endfunction

function! s:activate() abort
  let g:argwrap_tail_comma_braces = s:extract_value('argwrap_tail_comma_braces')
  let g:argwrap_padded_braces = s:extract_value('argwrap_padded_braces')
endfunction

augroup AfterProjectionist
  autocmd!
  autocmd User ProjectionistActivate call s:activate()
augroup END
