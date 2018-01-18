" expose new maps that explicitly allow hlsearch during incsearch
nnoremap g/ :let g:inchlsearch = 1<CR>/
nnoremap g? :let g:inchlsearch = 1<CR>?

" set nohlsearch during incsearch, except if explicitly allowed
" via the g/ and g? maps
function! s:EnterHlsearch() abort
  let g:save_hlsearch = &hlsearch

  let &hlsearch = exists('g:inchlsearch') && g:inchlsearch
endfunction

" restore hlsearch setting after incsearch
function! s:LeaveHlsearch() abort
  if exists('g:inchlsearch')
    unlet g:inchlsearch
  endif

  let &hlsearch = exists('g:save_hlsearch') && g:save_hlsearch
endfunction

" attach EnterHlsearch and LeaveHlsearch to autocmds
augroup IncSearch
  autocmd!

  autocmd CmdLineEnter [/\?] call s:EnterHlsearch()
  autocmd CmdLineLeave [/\?] call s:LeaveHlsearch()
augroup END

