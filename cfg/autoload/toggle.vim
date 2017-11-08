" define convenience functions for cursorline+scrollbind
" define enable, disable, and toggle
function! toggle#EnableLineBind()
  let t:line_bind_on = 1

  setlocal cursorline scrollbind
  wincmd w
  setlocal cursorline scrollbind
  wincmd w
endfunction

function! toggle#DisableLineBind()
  unlet t:line_bind_on

  setlocal nocursorline noscrollbind
  wincmd w
  setlocal nocursorline noscrollbind
  wincmd w
endfunction

function! toggle#ToggleLineBind()
  if exists("t:line_bind_on")
    call toggle#DisableLineBind()
  else
    call toggle#EnableLineBind()
  endif
endfunction

