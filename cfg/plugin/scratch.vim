" define function to turn current buffer into a scratch buffer
function! s:Scratch(...)
  setlocal buftype=nofile bufhidden=delete noswapfile

  if exists('a:1')
    execute 'set filetype=' . a:1
  endif
endfunction

" define commands to open scratch buffers with Scratch()
command! -nargs=? -complete=filetype Scratch enew | call s:Scratch(<q-args>)
command! -nargs=? -complete=filetype SScratch split | Scratch <args>
command! -nargs=? -complete=filetype VScratch vsplit | Scratch <args>
command! -nargs=? -complete=filetype TScratch tabnew | Scratch <args>
