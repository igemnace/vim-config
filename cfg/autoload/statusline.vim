" displays the buffer name applied with pathshorten()
function! statusline#bufnameshort()
  return pathshorten(expand('%:~:.'))
endfunction

" displays a flag if there are unseen quickfix errors
function! statusline#quickfix()
  return get(g:, 'quickfix_pending') ? '[Q]' : ''
endfunction

" displays a flag if there are unseen loclist errors
function! statusline#loclist()
  let l:win = winnr()

  if empty(getloclist(l:win))
    return ''
  endif

  if qf#IsLocWindowOpen(l:win)
    if !exists('g:loclist_seen')
      let g:loclist_seen = {}
    endif
    let g:loclist_seen[l:win] = 1

    return ''
  endif

  if exists('g:loclist_seen') && !get(g:loclist_seen, l:win)
    return '[L]'
  endif

  return ''
endfunction

" displays a flag if there is a currently running background job
function! statusline#bg()
  return exists('g:asyncdo') ? '[bg]' : ''
endfunction
