" define function to turn current buffer into a scratch buffer
function! s:Scratch()
  setlocal buftype=nofile bufhidden=hide noswapfile
endfunction

" define commands to open scratch buffers with Scratch()
command! -nargs=0 Scratch enew | call s:Scratch()
command! -nargs=0 SScratch split | Scratch
command! -nargs=0 VScratch vsplit | Scratch
command! -nargs=0 TScratch tabnew | Scratch
