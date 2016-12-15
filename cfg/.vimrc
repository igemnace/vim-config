set nocompatible
filetype off

""" PATHOGEN
packadd matchit
execute pathogen#infect()
call pathogen#helptags()
""" END PATHOGEN

""" NERDTREE
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
""" END NERDTREE

""" CTRL-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules'
""" END CTRL-P

""" VIM-AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2
""" END VIM-AIRLINE

""" VIM-GITGUTTER
set updatetime=250
let g:gitgutter_map_keys = 0
let g:gitgutter_highlight_lines = 1
""" END VIM-GITGUTTER

""" GUNDO
map U :GundoToggle<CR>
""" END GUNDO

""" VIM-JSON
hi def link jsObjectKey Label
""" END VIM-JSON

""" VIM-JSX
let g:jsx_ext_required = 0
""" END VIM-JSX

""" MISC CHANGES
" set meta editor behavior
set encoding=utf-8
filetype plugin indent on
syntax on
set visualbell
set ttyfast
set ruler
set mouse=a
au BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
if has('langmap') && exists('+langnoremap')
  set langnoremap
endif

" set temp files dir
set backup
set undofile
set dir=~/.vim/tmp//,.
set backupdir=~/.vim/tmp//,.
set undodir=~/.vim/tmp//,.

" set colors
colorscheme BlackSea
hi Search cterm=NONE ctermfg=white ctermbg=gray
highlight ColorColumn ctermbg=0
highlight GitGutterChangeLine ctermbg=226 ctermfg=black

" set autosave behavior
au FocusLost * :wa

" set tab behavior
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set autoindent

" set line numbering
set relativenumber
set number
au FocusLost * :set number
au FocusGained * :set relativenumber
au InsertEnter * :set number
au InsertLeave * :set relativenumber

" set line length
au FileType text setlocal textwidth=80
set colorcolumn=80

" set search behavior
set incsearch
set hlsearch
set ignorecase smartcase

" set command line behavior
set showcmd
set wildmenu
set wildmode=list:longest
set history=50

" set insert mode behavior
set backspace=indent,eol,start
inoremap <C-o> <esc>o
inoremap <C-U> <C-G>u<C-U>

" set non-mode specific maps
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
noremap <BS> <nop>
noremap <Space> <nop>
noremap <CR> <nop>
noremap H gT
noremap L gt

" set leader key behavior
let mapleader = "\<Space>"
map <Leader>j :bn<CR>
map <Leader>k :bN<CR>
map <Leader><Leader> :let @/ = ""<CR>:GitGutterAll<CR>
map [c <Plug>GitGutterPrevHunk
map ]c <Plug>GitGutterNextHunk
map <Leader>hs <Plug>GitGutterStageHunk
map <Leader>hu <Plug>GitGutterUndoHunk
map <Leader>hh :GitGutterLineHighlightsToggle<CR>
map <Leader>ga :Gwrite<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gd :Gdiff<CR>
map <Leader>gb :Gblame<CR>
""" END MISC CHANGES
