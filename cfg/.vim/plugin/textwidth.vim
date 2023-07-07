" highlight any characters at the textwidth limit
function! s:TextWidthHighlight() abort
  if exists('b:textwidth_match')
    try
      call matchdelete(b:textwidth_match)
    catch
      " pass
    endtry
  endif

  let l:limit = &l:textwidth == 0 ? 0 : &l:textwidth + 1
  let b:textwidth_match =
    \ matchadd('Error', '\%' . l:limit . 'c\zs.\ze')
endfunction

" call TextWidthHighlight every time the textwidth option is set
augroup TextWidthHighlight
  autocmd!

  autocmd BufEnter * call s:TextWidthHighlight()
  autocmd OptionSet textwidth call s:TextWidthHighlight()
augroup END
