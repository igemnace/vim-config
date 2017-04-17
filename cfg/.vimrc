set nocompatible

""" FZF.VIM
" make FZF use ripgrep to search
let g:rg_command='
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '
command! -bang -nargs=* Rg call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
""" END FZF.VIM

""" ALE
" use eslint for linting
let g:ale_linters={
\   'javascript': ['eslint'],
\}

" disallow ALE from setting highlights
let g:ale_set_highlights=0
""" END ALE

""" BASE16-VIM
" make base16-vim read colors from base16-shell
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
""" END BASE16-VIM

""" VIM-GITGUTTER
" make Vim update the buffer faster, for GitGutter to highlight faster
set updatetime=250

" disallow GitGutter's default maps
" My own maps are in the MISC CHANGES section, under LEADER KEY BEHAVIOR
let g:gitgutter_map_keys=0

" make GitGutter highlight hunks by default
let g:gitgutter_highlight_lines=1

" customize GitGutter signs
let g:gitgutter_sign_removed='-'
""" END VIM-GITGUTTER

""" VIM-YANKSTACK
" disallow YankStack's default maps
" My own maps are in the MISC CHANGES section, under LEADER KEY BEHAVIOR
let g:yankstack_map_keys=0
""" END VIM-YANKSTACK

""" VIM-ARGWRAP
" make ArgWrap add tail commas when working with [] or {}
let g:argwrap_tail_comma_braces='[{'
""" END VIM-ARGWRAP

""" AUTO-PAIRS-GENTLE
" turn on gentle mode
let g:AutoPairsUseInsertedCount=1

" disable certain pairs when in Lisp files, especially quote (')
augroup AutoPairs
  autocmd FileType lisp let b:AutoPairs={'(': ')', '"': '"'}
augroup END
""" END AUTO-PAIRS-GENTLE

""" VIM-REPEAT
" allow YankStack's behavior to be repeated
silent! call repeat#set("\<Plug>yankstack_substitute_older_paste", v:count)
silent! call repeat#set("\<Plug>yankstack_substitute_newer_paste", v:count)
""" END VIM-REPEAT

""" VIM-SLIME
" make vim-slime work with tmux panes by default
" guard for tmux
if $TMUX != ""
  let g:slime_target="tmux"
  let g:slime_default_config={"socket_name": split($TMUX, ",")[0], "target_pane": ":.1"}
endif

" unset vim-slime's default emacs bindings
" My own maps are in the MISC CHANGES section, under LEADER KEY BEHAVIOR
let g:slime_no_mappings=1
""" END VIM-SLIME

""" VIM-JSON
" define a default highlight for vim-JSON's highlight groups
highlight default link jsObjectKey Label
""" END VIM-JSON

""" VIM-JSX
" allow Vim-JSX to work even without a .jsx extension
let g:jsx_ext_required=0
""" END VIM-JSX

""" LOAD PACKAGES
" Vim doesn't add packages to runtimepath until after processing .vimrc
" but I need to call yankstack#setup(), which will error out if I don't
" have the plugin in my runtime path
" so I load them all right away
packloadall

" YankStack setup, so further maps involving y will use YankStack's behavior
call yankstack#setup()

" map Y to yank to end of line, similar to D and C
nmap Y y$

" YankStack overrides visual-mode S, which I need for vim-surround
xmap S <Plug>VSurround
""" END LOAD PACKAGES

""" MISC CHANGES
""" META EDITOR BEHAVIOR
" use matchit
packadd! matchit

" use Unicode
set encoding=utf-8

" make Vim indent smartly, based on filetype
filetype plugin indent on

" enable syntax highlighting
syntax on

" make Vim display faster, since modern terminals can handle it
set ttyfast

" make Vim display cursor line and column numbers at all times
set ruler

" allow Vim to hide modified buffers without abandoning them
set hidden

""" STATUSLINE BEHAVIOR
" make Vim display the status and tab lines at all times
set laststatus=2
set showtabline=2

" define statusline items
set statusline=
" filename
set statusline+=%*
set statusline+=%(%f%)
" window type (help, preview, qlist)
set statusline+=%*
set statusline+=%(%h%w%q%)
" modified flag
set statusline+=%3*
set statusline+=%(%m%)
" readonly flag
set statusline+=%1*
set statusline+=%(%r%)
" midline separator
set statusline+=%=
" buffer syntax
set statusline+=%*
set statusline+=%(%y%)
" ruler (line/col numbers, percent, total lines)
set statusline+=%*
set statusline+=\ %-8.(%l,%v%)\ %(%p%%\ %LL%)

""" WINDOW BEHAVIOR
" make Vim add new vertical splits to the right
" and new horizontal splits below
set splitright
set splitbelow

""" TEMP FILES DIRECTORY
" make Vim save swapfiles and undofiles in .vim
" to avoid cluttering the working directory
set backup
set undofile
set dir=~/.vim/tmp//,.
set backupdir=~/.vim/tmp//,.
set undodir=~/.vim/tmp//,.

""" COLORS
" define colors for the statusline
highlight StatusLine ctermbg=018
highlight StatusLineNC ctermfg=019 ctermbg=018
highlight User1 ctermfg=001 ctermbg=018
highlight User2 ctermfg=002 ctermbg=018
highlight User3 ctermfg=003 ctermbg=018
highlight User4 ctermfg=004 ctermbg=018
highlight User5 ctermfg=016 ctermbg=018
highlight User9 ctermfg=002 ctermbg=018

" define colors for highlighting search results
highlight Search cterm=NONE ctermfg=000 ctermbg=008

" define colors for the colorcolumn marking the 80-char limit
highlight ColorColumn ctermbg=018

" define colors for the cursor crosshairs
highlight link CursorLine Search
highlight link CursorColumn Search

" redefine colors for GitGutter highlights
highlight GitGutterChange cterm=NONE ctermfg=003
highlight GitGutterChangeLine cterm=NONE ctermfg=003 ctermbg=018

""" TAB BEHAVIOR
" set up tabs to insert 2 spaces
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set smarttab

" make Vim auto indent with tabs
set autoindent

""" LINE NUMBERING
" make Vim display the line number of the current line
" but relative line numbers for all other lines
set number
set relativenumber

""" LINE LENGTH
" add a colored column to mark the 80-char limit
set colorcolumn=80

""" SEARCH BEHAVIOR
" allow incremental search
set incsearch

" highlight search results
set hlsearch

" make search case sensitive for queries with capital letters
" but case insensitive for everything else
set ignorecase
set smartcase

""" BUFFER-SPECIFIC BEHAVIOR
augroup BufferSpecific

  " allow K to search :help in vim files
  autocmd FileType vim setlocal keywordprg=:help

  " automatically set cursorline for fugitive and todo.txt
  autocmd FileType gitcommit,todo,qf setlocal cursorline

  " set markdown documents textwidth to 80
  autocmd FileType markdown setlocal textwidth=80
augroup END

""" COMMAND LINE BEHAVIOR
" display commands below the statusline
set showcmd

" display tab completions for command line
set wildmenu
set wildmode=list:longest

" keep history of commands
set history=50

""" INSERT MODE BEHAVIOR
" allow Backspace to delete the following special characters
set backspace=indent,eol,start

augroup InsertBehavior
  " make Vim respect relative paths for file completion
  autocmd InsertEnter * let b:save_cwd = getcwd() | lcd %:p:h
  autocmd InsertLeave * execute 'cd' fnameescape(b:save_cwd)
augroup END

""" VISUAL MODE BEHAVIOR
" make the <> indent commands preserve the highlighted visual block
xnoremap > >gv
xnoremap < <gv

""" NON-MODE-SPECIFIC MAPS
" map keys to easily move between tabs
noremap H gT
noremap L gt

" unmap Backspace and Spacebar outside of Insert mode
" since they are merely maps to h and l, respectively
noremap <BS> <nop>
noremap <Space> <nop>

" map keys for moving between GitGutter hunks
map [h <Plug>GitGutterPrevHunk
map ]h <Plug>GitGutterNextHunk

" map keys for moving between linted errors
map ]w <Plug>(ale_next_wrap)
map [w <Plug>(ale_previous_wrap)

" map a key for vim-dispatch
noremap <F5> :Dispatch<CR>

""" LEADER KEY BEHAVIOR
" change Leader key to Spacebar, since \ is too hard to reach
let mapleader="\<Space>"

" map a key to reset highlights from search and GitGutter
noremap <Leader><Leader> :let @/=""<CR>:GitGutterAll<CR>

" map a key to toggle GitGutter highlights
noremap <Leader>hh :GitGutterLineHighlightsToggle<CR>

" map keys for managing GitGutter hunks
map <Leader>ha <Plug>GitGutterStageHunk
map <Leader>hu <Plug>GitGutterUndoHunk

" map keys for Fugitive
noremap <Leader>gs :Gstatus \| wincmd o<CR>
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gm :Gmerge<CR>
noremap <Leader>gd :Gdiff<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gg :Ggrep 

" map keys for FZF
noremap <Leader>fp :Files<CR>
noremap <Leader>fr :Rg<CR>
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

" map keys for netrw
noremap <Leader>nn :Explore<CR>
noremap <Leader>ns :Sexplore<CR>
noremap <Leader>nv :Vexplore<CR>

" map keys for useful native Vim functions
noremap <Leader>va :argadd **/*
noremap <Leader>vp :packadd 
" edit with no parameters is useful for reloading a buffer
noremap <Leader>vr :edit<CR>

" map keys for quickfix and loc lists
noremap <Leader>qo :copen<CR>
noremap <Leader>qc :cclose<CR>
noremap <Leader>lo :lopen<CR>
noremap <Leader>lc :lclose<CR>

" map a key to trigger ArgWrap
noremap <Leader>a :ArgWrap<CR>

" map keys for Vim-Slime
xmap <Leader>s <Plug>SlimeRegionSend
nmap <Leader>s <Plug>SlimeMotionSend
nmap <Leader>ss <Plug>SlimeLineSend

" map a key for GUndo
nnoremap <Leader>u :GundoToggle<CR>

" map a key to display the YankStack
noremap <Leader>y :Yanks<CR>

" map keys for cycling through the YankStack
map <Leader>p <Plug>yankstack_substitute_older_paste
map <Leader>P <Plug>yankstack_substitute_newer_paste
""" END MISC CHANGES
