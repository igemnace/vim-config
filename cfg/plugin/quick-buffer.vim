" original problem: :B command that extends :b such that I don't have to hit *
" Authors: Antony_, igemnace, markzen on #vim

function! QuickBuffer(pattern, split) abort
  redraw

  " normalize commands between split and non-split
  if a:split
    let bufcmd = "sbuffer"
    let qbcmd = "SB"
  else
    let bufcmd = "buffer"
    let qbcmd = "B"
  endif

  " trim trailing whitespace
  let pattern = substitute(a:pattern, '\s\+$', '', '')

  " catch known patterns
  if empty(pattern)
    call feedkeys(":".qbcmd." \<C-d>")
    return
  elseif pattern is '*'
    call feedkeys(":ls!\<cr>:".qbcmd." ")
    return
  elseif pattern =~ '^\d\+$' || bufexists(pattern)
    execute bufcmd pattern
    return
  endif

  " add globstars where spaces exist
  if stridx(a:pattern, ' ') isnot -1
    let globbed = '*' . join(split(pattern, '\s\+'), '*') . '*'
  else
    let globbed = pattern
  endif

  try
    execute bufcmd globbed
  catch
    " :buffer throws when there are several matching buffers
    " in which case, display matching buffers with <C-d>
    " then repopulate commandline for convenience
    call feedkeys(qbcmd . globbed . "\<C-d>\<C-u>" . qbcmd . ' ' . pattern, 'n')
  endtry
endfunction

command! -nargs=* -complete=buffer B call QuickBuffer(<q-args>, 0)
command! -nargs=* -complete=buffer SB call QuickBuffer(<q-args>, 1)
