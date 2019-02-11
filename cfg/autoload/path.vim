function! path#remove_extension(path) abort
  let l:current = a:path
  let l:previous = ''

  while l:current != l:previous
    let l:previous = l:current
    let l:current = fnamemodify(l:current, ':r')
  endwhile

  return l:current
endfunction

function! path#resolve_alias(alias, prefix, path) abort
  " normalize arguments into lists
  let alias_list = type(a:alias) == v:t_list
        \ ? a:alias
        \ : [a:alias]
  let prefix_list = type(a:prefix) == v:t_list
        \ ? a:prefix
        \ : [a:prefix]

  " find first valid prefix in provided prefix list
  for prefix in prefix_list
    if isdirectory(prefix)
      let canonical_prefix = prefix
    endif
  endfor

  " if no valid prefixes are found, return original path
  if !exists('canonical_prefix') || empty(canonical_prefix)
    return a:path
  endif

  " build substitute
  let pattern = escape(join(alias_list, '\|'), '~')
  echom a:path
  echom pattern
  echom canonical_prefix
  let resolved_path = substitute(a:path, pattern, canonical_prefix, '')
  echom resolved_path

  return resolved_path
endfunction
