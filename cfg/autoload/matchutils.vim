function! matchutils#add_word_bounds(group)
  let l:wordlist = split(a:group, ':')
  let l:bound_wordlist = map(l:wordlist, "'\\<' . v:val . '\\>'")
  return join(l:bound_wordlist, ':')
endfunction

function! matchutils#concat_groups(...)
  let l:grouplist = []

  for l:arg in a:000
    if type(l:arg) == v:t_list
      for l:e in l:arg
        call add(l:grouplist, l:e)
      endfor
    else
      call add(l:grouplist, l:arg)
    endif
  endfor

  return join(l:grouplist, ',')
endfunction
