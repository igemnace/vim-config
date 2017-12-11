" define convenience functions for cursorline+scrollbind
" define enable, disable, and toggle
function! toggle#EnableLineBind()
  let t:line_bind_on = 1

  windo setlocal cursorline scrollbind
endfunction

function! toggle#DisableLineBind()
  unlet t:line_bind_on

  windo setlocal nocursorline noscrollbind
endfunction

function! toggle#ToggleLineBind()
  if exists("t:line_bind_on")
    call toggle#DisableLineBind()
  else
    call toggle#EnableLineBind()
  endif
endfunction

