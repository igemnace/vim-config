" original problem: :B command that extends :b such that I don't have to hit *

function! QuickBuffer(pattern) abort
  if empty(a:pattern)
    call feedkeys(":B \<C-d>")
  endif
  let l:globbed = '*' . join(split(a:pattern, ' '), '*') . '*'
  try
    execute 'buffer' l:globbed
  catch
    call feedkeys(':B ' . l:globbed . "\<C-d>\<C-u>B "
      \ . a:pattern)
  endtry
endfunction

command! -nargs=* -complete=buffer B call QuickBuffer(<q-args>)
