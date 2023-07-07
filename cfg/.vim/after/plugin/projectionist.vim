function! s:extract_value (key) abort
  for [root, value] in projectionist#query(a:key)
    return value
  endfor
endfunction

function! s:activate() abort
  let keys = ['argwrap_tail_comma_braces', 'argwrap_padded_braces']
  for key in keys
    let value = s:extract_value(key)
    if !empty(value)
      execute 'let g:' . key . ' = value'
    endif
  endfor
endfunction

augroup AfterProjectionist
  autocmd!
  autocmd User ProjectionistActivate call s:activate()
augroup END
