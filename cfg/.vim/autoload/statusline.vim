" displays the buffer name applied with pathshorten()
function! statusline#bufnameshort()
  return pathshorten(expand("%:~:."))
endfunction
