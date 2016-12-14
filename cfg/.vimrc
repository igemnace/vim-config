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

""" VIM-AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2
""" END VIM-AIRLINE

""" VIM-GITGUTTER
set updatetime=250
let g:gitgutter_highlight_lines = 1
map <Leader>hr :GitGutterAll<CR>
""" END VIM-GITGUTTER

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
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

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
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" set line length
autocmd FileType text setlocal textwidth=80
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
imap <C-o> <esc>o
inoremap <C-U> <C-G>u<C-U>

" set normal mode behavior
map Q gq
nnoremap <BS> <nop>
nnoremap <Space> <nop>
nnoremap <CR> <nop>

" set leader key behavior
let mapleader = " "
map <Leader>j :bn<CR>
map <Leader>k :bN<CR>
map <Leader><Leader> :let @/ = ""<CR>
""" END MISC CHANGES


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""" DEFAULT .vimrc
""" contains things I don't yet understand

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
