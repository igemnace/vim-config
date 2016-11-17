set nocompatible
filetype off

""" PATHOGEN
packadd matchit
execute pathogen#infect()
call pathogen#helptags()
""" END PATHOGEN

""" NERDTREE
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
""" END NERDTREE

""" CTRL-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules'
""" END CTRL-P

""" MISC CHANGES
" set meta editor behavior
set encoding=utf-8
filetype plugin indent on
set visualbell
set ttyfast
set ruler

" set temp files dir
set backup
set undofile
set dir=~/.vim/tmp//,.
set backupdir=~/.vim/tmp//,.
set undodir=~/.vim/tmp//,.

" set colors
:colorscheme BlackSea
hi def link jsObjectKey Label
syntax on

" set autosave behavior
au FocusLost * :wa

" set tab behavior
:set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" set line numbering
:set relativenumber
:set number
:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" set line length
autocmd FileType text setlocal textwidth=80
set colorcolumn=80

" set search behavior
set incsearch
set hlsearch
set ignorecase smartcase
nnoremap / /\v
vnoremap / /\v

" set command line behavior
set showcmd
set wildmenu
set wildmode=list:longest

" set insert mode behavior
set backspace=indent,eol,start
imap <C-o> <esc>o
""" END MISC CHANGES


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""" DEFAULT .vimrc
""" contains things I don't yet understand
if v:progname =~? "evim"
  finish
endif

set history=50		" keep 50 lines of command line history

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif

""" END DEFAULT .vimrc
