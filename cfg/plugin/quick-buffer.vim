" original problem: :B command that extends :b such that I don't have to hit *
" Authors: Antony_, igemnace, markzen on #vim

function! QuickBuffer(pattern) abort
  redraw
  let p = substitute(a:pattern, '\s\+$', '', '')
  if empty(p)
    call feedkeys(":B \<C-d>")
    return
  elseif p is '*'
    call feedkeys(":ls!\<cr>:B ")
    return
  elseif p =~ '^\d\+$'
    execute 'buffer' p
    return
  endif
  let l:globbed = '*' . join(split(p, '\s\+'), '*') . '*'
  try
    execute 'buffer' l:globbed
  catch
    call feedkeys(':B ' . l:globbed . "\<C-d>\<C-u>B " . p, 'n')
  endtry
endfunction

command! -nargs=* -complete=buffer B call QuickBuffer(<q-args>)
