" expose new maps that explicitly allow hlsearch during incsearch
nnoremap <silent> g/ :let g:inchlsearch = 1<CR>/
nnoremap <silent> g? :let g:inchlsearch = 1<CR>?

" set nohlsearch during incsearch, except if explicitly allowed
" via the g/ and g? maps
function! s:EnterHlsearch() abort
  let g:save_hlsearch = &hlsearch

  if exists('g:inchlsearch') && g:inchlsearch
    set hlsearch
  else
    set nohlsearch
  endif
endfunction

" restore hlsearch setting after incsearch
function! s:LeaveHlsearch() abort
  if exists('g:inchlsearch')
    unlet g:inchlsearch
  endif

  if exists('g:save_hlsearch') && g:save_hlsearch
    set hlsearch
  else
    set nohlsearch
  endif
endfunction

" attach EnterHlsearch and LeaveHlsearch to autocmds
augroup Search
  autocmd!

  autocmd CmdLineEnter [/\?] call s:EnterHlsearch()
  autocmd CmdLineLeave [/\?] call s:LeaveHlsearch()
augroup END

