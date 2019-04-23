function! make#use_default_errorformat(cmd) abort
  let save_efm = &errorformat
  setlocal errorformat&
  execute a:cmd
  let &errorformat = save_efm
endfunction
