function! s:MarkQF() abort
  if !qf#IsQfWindowOpen()
    let g:quickfix_pending = 1
  endif
endfunction

function! s:UnmarkQF() abort
  if empty(getloclist(0)) && exists('g:quickfix_pending')
    unlet g:quickfix_pending
  endif
endfunction

function! s:PrepareMarkLoc() abort
  if !exists('g:loclist_seen')
    let g:loclist_seen = {}
  endif

  let l:win = winnr()
  if has_key(g:loclist_seen, l:win)
    unlet g:loclist_seen[l:win]
  endif
endfunction

augroup QfAfter
  autocmd!

  " quickfix
  autocmd QuickFixCmdPost [^l]* call s:MarkQF()
  autocmd Filetype qf call s:UnmarkQF()

  " loclist
  autocmd QuickFixCmdPre l* call s:PrepareMarkLoc()
augroup END

function! s:UnmarkAll()
  if exists('g:quickfix_pending')
    unlet g:quickfix_pending
  endif
  if exists('g:loclist_seen')
    unlet g:loclist_seen
  endif
endfunction

command! QfUnmarkAll call s:UnmarkAll()
