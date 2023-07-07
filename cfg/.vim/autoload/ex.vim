function! s:run(command) abort
  let view = winsaveview()
  let result = execute(a:command)

  call winrestview(view)
  return result
endfunction

function! ex#read(command) abort
  put =s:run(a:command)
endfunction

function! ex#view(command) abort
  let result = s:run(a:command)
  SScratch
  0put =result
  $d
endfunction

function! ex#count_args(arg) abort
  echo execute(a:arg)
endfunction
