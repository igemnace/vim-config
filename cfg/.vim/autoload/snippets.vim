if !exists("g:snippets_trigger")
  let g:snippets_trigger="<Expand>"
endif

" creates a snippet
" Params:
" pattern, expansion, [buffer_local]
function! snippets#Create(pattern, expansion, ...)
  let l:buffer_local=0
  if a:0 > 0
    let l:buffer_local=a:1
  endif

  let l:modifier=""
  if l:buffer_local
    let l:modifier="<buffer>"
  endif

  " add a unique snippets trigger, so it doesn't expand
  " without explicit action
  let l:abbrev=a:pattern . g:snippets_trigger

  execute "iabbrev" l:modifier l:abbrev a:expansion
endfunction

function! snippets#CreateBufferLocal(pattern, expansion)
  call snippets#Create(a:pattern, a:expansion, 1)
endfunction
