function! cwd#ChangeOnInsert() abort
  augroup ChangeCwdInsert
    " make Vim respect relative paths for file completion
    autocmd! InsertEnter <buffer> let b:save_cwd = getcwd() | lcd %:p:h
    autocmd! InsertLeave <buffer> execute 'lcd' fnameescape(b:save_cwd)
  augroup END
endfunction
