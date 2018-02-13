function! path#remove_extension(path) abort
  let l:current = a:path
  let l:previous = ''

  while l:current != l:previous
    let l:previous = l:current
    let l:current = fnamemodify(l:current, ':r')
  endwhile

  return l:current
endfunction
