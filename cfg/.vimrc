""" VIM CONFIG {{{
""" MISC EDITOR BEHAVIOR {{{
" use matchit
packadd! matchit

" use Unicode
set encoding=utf-8

" make Vim detect filetypes and apply filetype plugin and indent files
filetype plugin indent on

" enable syntax highlighting
syntax enable

" allow Vim to hide modified buffers without abandoning them
set hidden

" delete comment characters when joining lines
set formatoptions+=j

" remove timeout on mappings but keep them for key codes
" to remove timeout from mapleader but avoid breaking <ESC> codes
set notimeout
set ttimeout

" make Vim use ripgrep for :grep
set grepprg=rg\ --vimgrep\ --no-heading

" change characters used to fill vsplit separator and folds
set fillchars=fold:\ ,diff:-

" make Vim use 'define' for completion
set complete+=d
""" MISC EDITOR BEHAVIOR }}}

""" STATUSLINE BEHAVIOR {{{
" make Vim display the status and tab lines at all times
set laststatus=2
set showtabline=2

" define statusline items
set statusline=
" filename
set statusline+=%*
set statusline+=%(%{statusline#bufnameshort()}%)
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
""" END STATUSLINE BEHAVIOR }}}

""" WINDOW BEHAVIOR {{{
" make Vim add new vertical splits to the right
" and new horizontal splits below
set splitright
set splitbelow
""" END WINDOW BEHAVIOR }}}

""" TEMP FILES BEHAVIOR {{{
" make Vim save swapfiles, backups, and undofiles in .vim
" so I can make use of them without cluttering the working directory
set swapfile
set backup
set undofile
set directory=~/.vim/tmp//,.
set backupdir=~/.vim/tmp//,.
set undodir=~/.vim/tmp//,.
""" END TEMP FILES BEHAVIOR }}}

""" COLORS {{{
" define a wrapper function to set all my highlight overrides
function! OverrideHighlights()
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

  " define colors for folds
  highlight Folded ctermfg=020

  " define colors for vsplit separator
  highlight VertSplit ctermbg=018

  " define colors for wildmenu
  highlight WildMenu ctermfg=003 ctermbg=018

  " redefine colors for GitGutter highlights
  highlight GitGutterChange cterm=NONE ctermfg=003
  highlight GitGutterChangeLine cterm=NONE ctermfg=003 ctermbg=018
endfunction

" override highlights everytime the colorscheme is set
augroup HighlightOverrides
  autocmd!

  autocmd ColorScheme * call OverrideHighlights()
augroup END

" set the colorscheme
" base16-eighties works only if base16 is forced into 256-color mode
let base16colorspace = 256
colorscheme base16-eighties
""" END COLORS }}}

""" INDENT BEHAVIOR {{{
" set up indents to use 2 spaces
set shiftwidth=2

" set up <Tab> to insert an indent instead of a tab character
" this relies on the value of shiftwidth
set softtabstop=-1
set expandtab

" make <Tab> insert an indent (shiftwidth) when at the start of a line
" and a tab character elsewhere (tabstop/softtabstop)
" my softabstop is set up to rely on shiftwidth so this may seem superfluous
" but there may be times I'd want to change tab settings locally
set smarttab

" make tab characters display as 8 characters wide
set tabstop=8

" make Vim auto indent when typing new lines
set autoindent
""" END INDENT BEHAVIOR }}}

""" LINE NUMBERING {{{
" make Vim display the line number of the current line
" but relative line numbers for all other lines
set number
set relativenumber
""" END LINE NUMBERING }}}

""" LINE LENGTH {{{
" add a colored column to mark the 80-char limit
set colorcolumn=80
""" END LINE LENGTH }}}

""" SEARCH BEHAVIOR {{{
" allow incremental search
set incsearch

" highlight search results
set hlsearch

" make search case sensitive for queries with capital letters
" but case insensitive for everything else
set ignorecase
set smartcase
""" END SEARCH BEHAVIOR }}}

""" BUFFER-SPECIFIC BEHAVIOR {{{
augroup BufferSpecific
  autocmd!

  " allow K to search :help in vim files
  autocmd FileType vim setlocal keywordprg=:help

  " automatically set cursorline for fugitive, todo.txt, and quickfix
  autocmd FileType gitcommit,todo,qf setlocal cursorline

  " set notes textwidth to 80
  autocmd FileType vimwiki,markdown setlocal textwidth=80

  " set spell check for prose-related buffers
  autocmd FileType vimwiki,markdown,gitcommit setlocal spell

  " set makeprg to pandoc for markdown
  autocmd FileType markdown setlocal makeprg=pandoc\ %\ -o\ %:r.pdf
augroup END
""" END BUFFER-SPECIFIC BEHAVIOR }}}

""" COMMAND LINE BEHAVIOR {{{
" display commands below the statusline
set showcmd

" display tab completions for command line
set wildmenu

" partial-complete before displaying wildmenu, then cycle through options
set wildmode=list:longest,full

" limit command history
set history=100

" abbreviate commandline messages as much as possible
" to help avoid hit-enter prompts
set shortmess=atoO
""" END COMMAND LINE BEHAVIOR }}}

""" INSERT MODE BEHAVIOR {{{
" allow <BS> to delete the following special characters
set backspace=indent,eol,start

" map <C-@> to nop, so I can use it as my Insert mode leader
" this byte is sent by both <C-2> and <C-Space>
inoremap <C-@> <nop>

" map keys to expand my own system of snippets
" add both <C-Space><C-Space> and <C-Space><C-Space>, to cover errors
imap <C-@><Space> <Plug>SnipletExpand
imap <C-@><C-@> <Plug>SnipletExpand

" map keys to quickly insert dates and times
inoremap <C-@>d <C-r>=system("date -Idate \| xargs echo -n")<CR>
inoremap <C-@>t <C-r>=system("date +%R \| xargs echo -n")<CR>

augroup InsertBehavior
  autocmd!

  " make Vim respect relative paths for file completion
  autocmd InsertEnter * let b:save_cwd = getcwd() | lcd %:p:h
  autocmd InsertLeave * execute 'cd' fnameescape(b:save_cwd)
augroup END
""" END INSERT MODE BEHAVIOR }}}

""" VISUAL MODE BEHAVIOR {{{
" make the <> indent commands preserve the highlighted visual block
xnoremap > >gv
xnoremap < <gv
""" END VISUAL MODE BEHAVIOR }}}

""" NON-MODE-SPECIFIC MAPS {{{
" map <BS> to switch to the alternate buffer
noremap <BS> <C-^>

" unmap <Space> so it doesn't move to the right when I press <Leader>
" since I have <Space> as <Leader>
noremap <Space> <nop>

" swap g] and g<C-]>
" since g<C-]> jumps immediately if there is just one tag, which I want
" but g] is easier to press
noremap g] g<C-]>
noremap g<C-]> g]

" map keys for moving between GitGutter hunks
map [h <Plug>GitGutterPrevHunk
map ]h <Plug>GitGutterNextHunk

" map keys for moving between linted errors
map ]w <Plug>(ale_next_wrap)
map [w <Plug>(ale_previous_wrap)
""" END NON-MODE-SPECIFIC MAPS }}}

""" FUNCTIONS {{{
" define convenience functions for cursorline+scrollbind
" define enable, disable, and toggle
function! EnableLineBind()
  let t:line_bind_on = 1

  setlocal cursorline scrollbind
  wincmd w
  setlocal cursorline scrollbind
  wincmd w
endfunction

function! DisableLineBind()
  unlet t:line_bind_on

  setlocal nocursorline noscrollbind
  wincmd w
  setlocal nocursorline noscrollbind
  wincmd w
endfunction

function! ToggleLineBind()
  if exists("t:line_bind_on")
    call DisableLineBind()
  else
    call EnableLineBind()
  endif
endfunction

" define function to turn current buffer into a scratch buffer
function! Scratch()
  setlocal buftype=nofile bufhidden=hide noswapfile
endfunction
""" END FUNCTIONS }}}

""" COMMANDS {{{
" define a command for splitting a statement with a ternary operator
command! -nargs=0 SplitTernary
  \ silent normal! 0f?if:iVkk:s/\s\+$//e:let @/=""
command! -nargs=0 SplitWrapperXML silent normal! ^f>a$F<i

" define a command for ToggleLineBind
command! -nargs=0 ToggleLineBind call ToggleLineBind()

" define commands to open scratch buffers with Scratch()
command! -nargs=0 Scratch enew | call Scratch()
command! -nargs=0 SScratch split | Scratch
command! -nargs=0 VScratch vsplit | Scratch

" define a command to post to Sprunge
command! -nargs=0 -range Sprunge
  \ <line1>,<line2>w ! curl -F "sprunge=<-" http://sprunge.us

" define wrapper commands to set makeprg and tagsprg
command! -nargs=+ MakePrg let &makeprg=<q-args>
command! -nargs=+ TagsPrg let g:tagsprg=<q-args>

" define commands to run native functions with AsyncRun
command! -nargs=* AsyncMake AsyncRun -program=make <args>
command! -nargs=+ AsyncGrep AsyncRun -program=grep <args>
command! -nargs=0 AsyncTags execute "AsyncRun" g:tagsprg
""" END COMMANDS }}}

""" LEADER KEY BEHAVIOR {{{
" change Leader key to Spacebar, since \ is too hard to reach
let mapleader = "\<Space>"

" map a key to reset highlights from search and GitGutter
noremap <Leader><Leader> :let @/=""<CR>:GitGutterAll<CR>

" map a key to toggle GitGutter highlights
noremap <Leader>hh :GitGutterLineHighlightsToggle<CR>

" map keys for managing GitGutter hunks
map <Leader>ha <Plug>GitGutterStageHunk
map <Leader>hu <Plug>GitGutterUndoHunk

" map keys for Fugitive
noremap <Leader>gs :tab split \| Gstatus \| wincmd o<CR>
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit --verbose<CR>
noremap <Leader>gm :Gmerge<CR>
noremap <Leader>gd :Gdiff<CR>
noremap <Leader>gb :Gblame \| ToggleLineBind<CR>
noremap <Leader>gg :Ggrep<Space>
noremap <Leader>gl :Gllog -- %<CR><CR><CR>
noremap <Leader>gL :Gllog --<CR><CR><CR>
noremap <Leader>gw :Gbrowse<CR>
noremap <Leader>gp :Gpush<CR>
noremap <Leader>gf :Gfetch<CR>

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
noremap <Leader>ft :Tags<CR>

" map keys for netrw
noremap <Leader>nn :Explore<CR>
noremap <Leader>ns :Sexplore<CR>
noremap <Leader>nv :Vexplore<CR>

" map keys for useful native Vim functions
noremap <Leader>va :argadd **/*
noremap <Leader>vp :packadd<Space>
" edit with no parameters is useful for reloading a buffer
noremap <Leader>vr :edit<CR>
noremap <Leader>vf :filetype detect<CR>
noremap <Leader>vd :set foldmethod=

" map keys for quickfix and loc lists
noremap <Leader>qo :copen<CR>
noremap <Leader>qc :cclose<CR>
noremap <Leader>lo :lopen<CR>
noremap <Leader>lc :lclose<CR>

" map a key to trigger ArgWrap
noremap <Leader>a :ArgWrap<CR>

" map keys for AsyncRun
noremap <Leader>rr :AsyncRun<Space>
noremap <Leader>rt :AsyncTags<CR>
noremap <Leader>rm :AsyncMake<CR>
noremap <Leader>rg :AsyncGrep<Space>

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
""" END LEADER KEY BEHAVIOR }}}
""" END VIM CONFIG }}}

""" PLUGIN CONFIG {{{
""" FZF.VIM {{{
" add a command to search with ripgrep then feed to fzf
let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '
command! -bang -nargs=* Rg call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
""" END FZF.VIM }}}

""" ALE {{{
" use eslint for linting
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" disallow ALE from setting highlights
let g:ale_set_highlights = 0
""" END ALE }}}

""" ASYNCRUN.VIM {{{
" define a Make command for Fugitive's Gpush and Gpull
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
""" END ASYNCRUN.VIM }}}

""" TERN_FOR_VIM {{{
" allow tern_for_vim to map <LocalLeader> keybinds
let tern_map_keys = 1
""" END TERN_FOR_VIM }}}

""" VIM-GITGUTTER {{{
" make Vim update the buffer faster, for GitGutter to update highlights faster
set updatetime=250

" disallow GitGutter's default maps
" My own maps are in the VIM CONFIG section, under LEADER KEY BEHAVIOR
let g:gitgutter_map_keys = 0

" make GitGutter highlight hunks by default
let g:gitgutter_highlight_lines = 1

" customize GitGutter signs
let g:gitgutter_sign_removed = '-'
""" END VIM-GITGUTTER }}}

""" VIMWIKI {{{
" allow VimWiki to fold sections and code blocks
let g:vimwiki_folding = 'expr'
""" END VIMWIKI }}}

""" VIM-YANKSTACK {{{
" disallow YankStack's default maps
" My own maps are in the VIM CONFIG section, under LEADER KEY BEHAVIOR
let g:yankstack_map_keys = 0
""" END VIM-YANKSTACK }}}

""" VIM-ARGWRAP {{{
" make ArgWrap add tail commas when working with [] or {}
let g:argwrap_tail_comma_braces = '[{'
""" END VIM-ARGWRAP }}}

""" AUTO-PAIRS {{{
" disallow AutoPairs from jumping to closing brackets on the next line
let g:AutoPairsMultilineClose = 0

" disable certain pairs when in Lisp files, especially quote (')
augroup AutoPairs
  autocmd!
  autocmd FileType lisp let b:AutoPairs = {'(': ')', '"': '"'}
augroup END
""" END AUTO-PAIRS }}}

""" VIM-REPEAT {{{
" allow YankStack's behavior to be repeated
silent! call repeat#set("\<Plug>yankstack_substitute_older_paste", v:count)
silent! call repeat#set("\<Plug>yankstack_substitute_newer_paste", v:count)
""" END VIM-REPEAT }}}

""" VIM-SLIME {{{
" make vim-slime work with tmux panes by default
" guard for tmux
if $TMUX != ""
  let g:slime_target = "tmux"
  let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":.1"}
endif

" unset vim-slime's default emacs bindings
" My own maps are in the VIM CONFIG section, under LEADER KEY BEHAVIOR
let g:slime_no_mappings = 1
""" END VIM-SLIME }}}

""" VIM-TABLE-MODE {{{
" make tables bitbucket-markdown-compatible
let g:table_mode_corner = '|'
let g:table_mode_corner_corner = '|'
let g:table_mode_header_fillchar = '-'

" disallow vim-table-mode from automatically aligning every now and then
let g:table_mode_auto_align = 0
""" END VIM-TABLE-MODE }}}

""" TSUQUYOMI {{{
" make Tsuquyomi use single quotes for automatic imports
let g:tsuquyomi_single_quote_import = 1

" disallow Tsuquyomi from a lot of unwanted default behavior
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_disable_default_mappings = 1
""" END TSUQUYOMI }}}

""" VIM-JSON {{{
" define a default highlight for vim-JSON's highlight groups
highlight default link jsObjectKey Label
""" END VIM-JSON }}}

""" VIM-JSX {{{
" allow Vim-JSX to work even without a .jsx extension
let g:jsx_ext_required = 0
""" END VIM-JSX }}}

""" VIM-TEMPLATE-LITE {{{
" declare mappings of patterns to templates to load
let g:template_lite_mappings = {
  \  '*.component.js': 'react-native/component.js',
  \  '*.hoc.js': 'react-native/hoc.js',
  \  '*.styles.js': 'react-native/styles.js',
  \  '*.redux.js': 'react-native/redux.js',
  \  '*.fire.js': 'react-native/fire.js',
  \  '*.component.jsx': 'react/component.jsx',
  \  '*.hoc.jsx': 'react/hoc.jsx',
  \  '*.component.ts': 'angular/component.ts',
  \  '*.sh': 'sh.sh',
  \}

" trigger vim-abolish on template load
augroup TemplatesVim
  autocmd!

  " replace skeleton-name with filename
  autocmd User TemplateLoad
    \ silent! execute "%S/skeleton-name/" . expand('%:t:r:r') . "/g"
augroup END
""" END VIM-TEMPLATE-LITE }}}
""" END PLUGIN CONFIG }}}

" vim:fdm=marker
