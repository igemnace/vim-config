function! visual_op#maps#SearchInPlace(type) abort
  call visual_op#core#operationalize("\<Plug>SearchInPlace", a:type)
endfunction

function! visual_op#maps#Cgn(type) abort
  call visual_op#core#operationalize("\<Plug>SearchInPlacecgn", a:type)
endfunction
