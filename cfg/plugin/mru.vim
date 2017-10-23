" Original form was a single mapping that did everything, made by dza on #vim
" I refactored it into its current function+command form, which is much nicer

" create a Scratch buffer with MRU
function! s:ShowMRU(bang) abort
  if a:bang ==? '!'
    TScratch
  else
    SScratch
  endif

  0put =v:oldfiles
  normal! gg
endfunction

" I'd like a command better
command! -bang MRU call s:ShowMRU(<q-bang>)
