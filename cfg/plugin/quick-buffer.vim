" original problem: :B command that extends :b such that I don't have to hit *

function! QuickBuffer(pattern) abort
  if empty(a:pattern)
    call feedkeys(":B \<C-d>")
  endif
  try
    execute 'buffer' join(split(a:pattern, ' '), '*')
  catch
    call feedkeys(':B ' . join(split(a:pattern, ' '), '*') . "\<C-d>\<C-u>B "
      \ . a:pattern)
  endtry
endfunction

command! -nargs=* -complete=buffer B call QuickBuffer(<q-args>)
