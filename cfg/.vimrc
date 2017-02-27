set nocompatible
" turn filetype off temporarily, for Pathogen
" this will be turned on again in the MISC CHANGES section
filetype off

""" PATHOGEN
" Pathogen setup boilerplate
packadd matchit
execute pathogen#infect()
call pathogen#helptags()
""" END PATHOGEN

""" NERDTREE
" close Vim when the last buffer is a NERDTree
augroup NERDTree
  au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

" map a key to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" make NERDTree show hidden dotfiles
let NERDTreeShowHidden = 1
""" END NERDTREE

""" FZF.VIM
" make FZF use ripgrep to search
let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '
command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)

" map a key to toggle FZF for files
noremap <C-p> :FZF<CR>
""" END FZF.VIM

""" YOUCOMPLETEME
" auto-close the annoying preview window
let g:ycm_autoclose_preview_window_after_completion = 1
""" END YOUCOMPLETEME

""" ALE
" use eslint for linting
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" map keys for moving between linted errors
map ]w <Plug>(ale_next_wrap)
map [w <Plug>(ale_previous_wrap)
""" END ALE

""" BASE16-VIM
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
""" END BASE16-VIM

""" VIM-AIRLINE
" make Airline display tabs across the top
let g:airline#extensions#tabline#enabled = 1

" make Airline use Powerline glyphs
let g:airline_powerline_fonts = 1

" make Vim to display the statusline at all times
set laststatus=2
""" END VIM-AIRLINE

""" VIM-GITGUTTER
" make Vim update the buffer faster, for GitGutter to highlight faster
set updatetime=250

" disallow GitGutter's default maps
" My own maps are in the MISC CHANGES section, under Leader key behavior
let g:gitgutter_map_keys = 0

" make GitGutter highlight hunks by default
let g:gitgutter_highlight_lines = 1

" customize GitGutter signs
let g:gitgutter_sign_removed = '-'
""" END VIM-GITGUTTER

""" GUNDO
" map a key to toggle Gundo
nnoremap U :GundoToggle<CR>
""" END GUNDO

""" VIM-YANKSTACK
" disallow YankStack's default misc maps
let g:yankstack_map_keys = 0

" YankStack setup, so further maps involving y will use YankStack's behavior
call yankstack#setup()

" map Y to yank to end of line, similar to D and C
" don't use noremap, to trigger YankStack's behavior
nmap Y y$
""" END VIM-YANKSTACK

""" VIM-ARGWRAP
" make ArgWrap add tail commas when working with [] or {}
let g:argwrap_tail_comma_braces = '[{'
""" END VIM-ARGWRAP

""" VIM-REPEAT
" allow YankStack's behavior to be repeated
silent! call repeat#set("\<Plug>yankstack_substitute_older_paste", v:count)
silent! call repeat#set("\<Plug>yankstack_substitute_newer_paste", v:count)
""" END VIM-REPEAT

""" VIM-JSON
" Vim-JSON setup boilerplate
hi def link jsObjectKey Label
""" END VIM-JSON

""" VIM-JSX
" allow Vim-JSX to work even without a .jsx extension
let g:jsx_ext_required = 0
""" END VIM-JSX

""" MISC CHANGES
"" Meta Editor behavior
" use Unicode
set encoding=utf-8

" make Vim indent smartly, based on filetype
filetype plugin indent on

" enable syntax highlighting
syntax on

" disable beeping
set visualbell

" make Vim display faster, since modern terminals can handle it
set ttyfast

" make Vim display cursor line and column numbers at all times
set ruler

" allow mouse actions
set mouse=a

" define :DiffOrig to display a buffer's source file, but unedited
" standard Vim boilerplate
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" make Vim respect non-standard keyboard input in Insert mode
" langnoremap is used instead of langmap to avoid mapping bugs
if has('langmap') && exists('+langnoremap')
  set langnoremap
endif

"" Temp Files Directory
" make Vim save swapfiles and undofiles in .vim
" to avoid cluttering the working directory
set backup
set undofile
set dir=~/.vim/tmp//,.
set backupdir=~/.vim/tmp//,.
set undodir=~/.vim/tmp//,.

"" Colors
" define colors for highlighting search results
hi Search cterm=NONE ctermfg=000 ctermbg=008

" define colors for the colorcolumn marking the 80-char limit
hi ColorColumn ctermbg=018

" define colors for the cursor crosshairs
hi link CursorLine Search
hi link CursorColumn Search

" redefine colors for GitGutter highlights
hi GitGutterChange cterm=NONE ctermfg=003
hi GitGutterChangeLine cterm=NONE ctermfg=003 ctermbg=018

"" Tab Behavior
" set up tabs to insert 2 spaces
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab

" make Vim auto indent with tabs
set autoindent

"" Line Numbering
" make Vim display the line number of the current line
" but relative line numbers for all other lines
set number
set relativenumber

"" Line Length
" add a colored column to mark the 80-char limit
set colorcolumn=80

"" Search Behavior
" allow incremental search
set incsearch

" highlight search results
set hlsearch

" make search case sensitive for queries with capital letters
" but case insensitive for everything else
set ignorecase
set smartcase

"" Command Line Behavior
" display commands below the statusline
set showcmd

" allow the q: menu to display command history
set wildmenu
set wildmode=list:longest
set history=50

"" Insert Mode Behavior
" allow Backspace to delete the following special characters
" standard Vim boilerplate
set backspace=indent,eol,start

" map a key to immediately add a new line below in Insert mode
inoremap <C-o> <esc>o

"" Visual Mode Behavior
" make the <> indent commands preserve the highlighted visual block
vnoremap > >gv
vnoremap < <gv

"" Non-Mode-Specific Maps
" map keys to easily move between splits
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" map keys to easily move between tabs
noremap H gT
noremap L gt

" unmap Backspace, Spacebar, Enter, and - outside of Insert mode
" since they are merely maps to h, l, j, and k, respectively
noremap <BS> <nop>
noremap <Space> <nop>
noremap <CR> <nop>
noremap - <nop>

" map keys for moving between GitGutter hunks
map [h <Plug>GitGutterPrevHunk
map ]h <Plug>GitGutterNextHunk

"" Leader Key Behavior
" change Leader key to Spacebar, since \ is too hard to reach
let mapleader = "\<Space>"

" map a key to quickly set syntax
noremap <Leader>s :set syntax=

" map a key to reset highlights from search and GitGutter
noremap <Leader><Leader> :let @/ = ""<CR>:GitGutterAll<CR>

" map a key to toggle GitGutter highlights
noremap <Leader>hh :GitGutterLineHighlightsToggle<CR>

" map keys for managing GitGutter hunks
map <Leader>ha <Plug>GitGutterStageHunk
map <Leader>hu <Plug>GitGutterUndoHunk

" map keys for Fugitive
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gm :Gmerge<CR>
noremap <Leader>gd :Gdiff<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gg :Ggrep 

" map keys for FZF
noremap <Leader>fs :GFiles?<CR>
noremap <Leader>fb :Buffers<CR>
noremap <Leader>fL :Lines<CR>
noremap <Leader>fl :BLines<CR>
noremap <Leader>f: :History:<CR>
noremap <Leader>f/ :History/<CR>
noremap <Leader>fc :Commits<CR>
noremap <Leader>fo :Commands<CR>
noremap <Leader>fm :Marks<CR>
noremap <Leader>ff :Filetypes<CR>

" map a key to trigger ArgWrap
noremap <Leader>a :ArgWrap<CR>

" map a key to toggle Codi
noremap <Leader>c :Codi!!<CR>

" map a key to display the YankStack
noremap <Leader>y :Yanks<CR>

" map keys for cycling through the YankStack
map <Leader>p <Plug>yankstack_substitute_older_paste
map <Leader>P <Plug>yankstack_substitute_newer_paste
""" END MISC CHANGES
