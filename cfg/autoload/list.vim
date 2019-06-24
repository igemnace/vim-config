function! list#uniq(list) abort
  let dict = {}
  let filtered = []
  for item in a:list
    if !has_key(dict, item)
      call add(filtered, item)
      let dict[item] = 1
    endif
  endfor
  return filtered
endfunction
