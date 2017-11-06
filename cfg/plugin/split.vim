" Author: romainl on #vim

function! Split()
	keeppatterns s/^\(\s*\)\(.\{-}\)\(\s*\)\(\%#\)\(\s*\)\(.*\)/\1\2\r\1\4\6
endfunction

nnoremap <Plug>Split :<C-u>call Split()<CR>
