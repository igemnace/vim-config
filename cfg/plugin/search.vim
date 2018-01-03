" use * and # even from Visual mode
xnoremap * y/<C-r>"<CR>
xnoremap # y?<C-r>"<CR>

" add <Plug> mappings for grepping the current selection, like *
nnoremap <Plug>GrepStar :Grep <lt>cword><CR>
xnoremap <Plug>GrepStar "gy:<C-u>Grep '<C-r>g'<CR>

" add <Plug> mappings for searching in place
nnoremap <Plug>SearchInPlace mzHmy`z*`yzt`z
xnoremap <Plug>SearchInPlace mzHmy`z"sy/<C-r>s<CR>`yzt`z
