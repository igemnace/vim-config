function! visual_op#core#operationalize(mapping, type) abort
  if a:type ==? 'line'
    normal! `[V`]
  else
    normal! `[v`]
  endif
  call feedkeys(a:mapping)
endfunction
