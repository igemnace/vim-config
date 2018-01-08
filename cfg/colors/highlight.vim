" setup
highlight clear
syntax reset
let g:colors_name = 'highlight'

" editor colors
highlight Bold             cterm=bold      ctermfg=NONE ctermbg=NONE gui=bold      guifg=NONE    guibg=NONE       guisp=NONE
highlight ColorColumn      cterm=NONE      ctermfg=NONE ctermbg=8    gui=NONE      guifg=NONE    guibg=#393939    guisp=NONE
highlight Conceal          cterm=NONE      ctermfg=4    ctermbg=0    gui=NONE      guifg=#6699cc guibg=#2d2d2d    guisp=NONE
highlight CursorColumn     cterm=NONE      ctermfg=NONE ctermbg=8    gui=NONE      guifg=NONE    guibg=#393939    guisp=NONE
highlight Cursor           cterm=NONE      ctermfg=0    ctermbg=7    gui=NONE      guifg=#2d2d2d guibg=#d3d0c8    guisp=NONE
highlight CursorLineNr     cterm=NONE      ctermfg=15   ctermbg=0    gui=NONE      guifg=#a09f93 guibg=#393939    guisp=NONE
highlight CursorLine       cterm=NONE      ctermfg=NONE ctermbg=8    gui=NONE      guifg=NONE    guibg=#393939    guisp=NONE
highlight Debug            cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE       guisp=NONE
highlight DiffAdd          cterm=bold      ctermfg=2    ctermbg=8    gui=bold      guifg=#99cc99 guibg=#393939    guisp=NONE
highlight DiffChange       cterm=NONE      ctermfg=15   ctermbg=8    gui=NONE      guifg=#747369 guibg=#393939    guisp=NONE
highlight DiffDelete       cterm=NONE      ctermfg=1    ctermbg=8    gui=NONE      guifg=#f2777a guibg=#393939    guisp=NONE
highlight DiffText         cterm=bold      ctermfg=3    ctermbg=8    gui=bold      guifg=#6699cc guibg=#393939    guisp=NONE
highlight Directory        cterm=NONE      ctermfg=4    ctermbg=NONE gui=NONE      guifg=#6699cc guibg=NONE       guisp=NONE
highlight EndOfBuffer      cterm=NONE      ctermfg=15   ctermbg=NONE gui=NONE      guifg=NONE    guibg=NONE       guisp=NONE
highlight ErrorMsg         cterm=NONE      ctermfg=1    ctermbg=0    gui=NONE      guifg=#f2777a guibg=#2d2d2d    guisp=NONE
highlight Error            cterm=NONE      ctermfg=0    ctermbg=1    gui=NONE      guifg=#2d2d2d guibg=#f2777a    guisp=NONE
highlight Exception        cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE       guisp=NONE
highlight FoldColumn       cterm=NONE      ctermfg=6    ctermbg=10   gui=NONE      guifg=#66cccc guibg=#393939    guisp=NONE
highlight Folded           cterm=NONE      ctermfg=15   ctermbg=8    gui=NONE      guifg=#747369 guibg=#393939    guisp=NONE
highlight Ignore           cterm=NONE      ctermfg=0    ctermbg=NONE gui=NONE      guifg=bg      guibg=NONE       guisp=NONE
highlight IncSearch        cterm=NONE      ctermfg=8    ctermbg=15   gui=NONE      guifg=#393939 guibg=#f99157    guisp=NONE
highlight lCursor          cterm=NONE      ctermfg=NONE ctermbg=NONE gui=NONE      guifg=bg      guibg=fg         guisp=NONE
highlight LineNr           cterm=NONE      ctermfg=15   ctermbg=0    gui=NONE      guifg=#747369 guibg=#393939    guisp=NONE
highlight Macro            cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE       guisp=NONE
highlight MatchParen       cterm=NONE      ctermfg=NONE ctermbg=8    gui=NONE      guifg=#2d2d2d guibg=#747369    guisp=NONE
highlight ModeMsg          cterm=bold      ctermfg=2    ctermbg=NONE gui=bold      guifg=#99cc99 guibg=NONE       guisp=NONE
highlight MoreMsg          cterm=NONE      ctermfg=2    ctermbg=NONE gui=NONE      guifg=#99cc99 guibg=NONE       guisp=NONE
highlight NonText          cterm=NONE      ctermfg=8    ctermbg=NONE gui=NONE      guifg=#747369 guibg=NONE       guisp=NONE
highlight Normal           cterm=NONE      ctermfg=7    ctermbg=0    gui=NONE      guifg=#d3d0c8 guibg=#2d2d2d    guisp=NONE
highlight Pmenu            cterm=NONE      ctermfg=15   ctermbg=8    gui=NONE      guifg=#a09f93 guibg=#393939    guisp=NONE
highlight PmenuSbar        cterm=NONE      ctermfg=NONE ctermbg=248  gui=NONE      guifg=NONE    guibg=Grey       guisp=NONE
highlight PmenuSel         cterm=NONE      ctermfg=3    ctermbg=8    gui=NONE      guifg=#393939 guibg=#a09f93    guisp=NONE
highlight PmenuThumb       cterm=NONE      ctermfg=NONE ctermbg=15   gui=NONE      guifg=NONE    guibg=White      guisp=NONE
highlight Question         cterm=NONE      ctermfg=4    ctermbg=NONE gui=NONE      guifg=#6699cc guibg=NONE       guisp=NONE
highlight QuickFixLine     cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=#d3d0c8 guibg=NONE       guisp=NONE
highlight Search           cterm=NONE      ctermfg=8    ctermbg=15   gui=NONE      guifg=#747369 guibg=#ffcc66    guisp=NONE
highlight SignColumn       cterm=NONE      ctermfg=8    ctermbg=0    gui=NONE      guifg=#747369 guibg=#393939    guisp=NONE
highlight SpecialKey       cterm=NONE      ctermfg=15   ctermbg=NONE gui=NONE      guifg=#747369 guibg=NONE       guisp=NONE
highlight SpellBad         cterm=underline ctermfg=7    ctermbg=0    gui=NONE      guifg=NONE    guibg=#2d2d2d    guisp=#f2777a
highlight SpellCap         cterm=NONE      ctermfg=NONE ctermbg=0    gui=NONE      guifg=NONE    guibg=#2d2d2d    guisp=#6699cc
highlight SpellLocal       cterm=NONE      ctermfg=NONE ctermbg=0    gui=NONE      guifg=NONE    guibg=#2d2d2d    guisp=#66cccc
highlight SpellRare        cterm=NONE      ctermfg=NONE ctermbg=0    gui=NONE      guifg=NONE    guibg=#2d2d2d    guisp=#cc99cc
highlight StatusLineNC     cterm=NONE      ctermfg=15   ctermbg=8    gui=NONE      guifg=#747369 guibg=#393939    guisp=NONE
highlight StatusLine       cterm=NONE      ctermfg=15   ctermbg=8    gui=NONE      guifg=#a09f93 guibg=#515151    guisp=NONE
highlight StatusLineTermNC cterm=NONE      ctermfg=15   ctermbg=8    gui=NONE      guifg=bg      guibg=LightGreen guisp=NONE
highlight StatusLineTerm   cterm=NONE      ctermfg=15   ctermbg=8    gui=NONE      guifg=bg      guibg=LightGreen guisp=NONE
highlight TabLineFill      cterm=NONE      ctermfg=8    ctermbg=8    gui=NONE      guifg=#747369 guibg=#393939    guisp=NONE
highlight TabLineSel       cterm=NONE      ctermfg=3    ctermbg=8    gui=NONE      guifg=#99cc99 guibg=#393939    guisp=NONE
highlight TabLine          cterm=NONE      ctermfg=15   ctermbg=8    gui=NONE      guifg=#747369 guibg=#393939    guisp=NONE
highlight Title            cterm=NONE      ctermfg=4    ctermbg=NONE gui=NONE      guifg=#6699cc guibg=NONE       guisp=NONE
highlight ToolbarButton    cterm=NONE      ctermfg=0    ctermbg=7    gui=NONE      guifg=Black   guibg=LightGrey  guisp=NONE
highlight ToolbarLine      cterm=NONE      ctermfg=NONE ctermbg=242  gui=NONE      guifg=NONE    guibg=Grey50     guisp=NONE
highlight TooLong          cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE       guisp=NONE
highlight Underlined       cterm=underline ctermfg=1    ctermbg=NONE gui=underline guifg=#f2777a guibg=NONE       guisp=NONE
highlight VertSplit        cterm=NONE      ctermfg=11   ctermbg=0    gui=NONE      guifg=#515151 guibg=#515151    guisp=NONE
highlight VisualNOS        cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE       guisp=NONE
highlight Visual           cterm=NONE      ctermfg=NONE ctermbg=8    gui=NONE      guifg=NONE    guibg=#515151    guisp=NONE
highlight WarningMsg       cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE       guisp=NONE
highlight WildMenu         cterm=NONE      ctermfg=3    ctermbg=8    gui=NONE      guifg=#f2777a guibg=#ffcc66    guisp=NONE
highlight link PreCondit      PreProc
highlight link SpecialComment Special
highlight clear Italic

" standard syntax
highlight Boolean      cterm=NONE ctermfg=9  ctermbg=NONE gui=NONE guifg=#f99157 guibg=NONE    guisp=NONE
highlight Character    cterm=NONE ctermfg=1  ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE    guisp=NONE
highlight Comment      cterm=NONE ctermfg=15 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE    guisp=NONE
highlight Conditional  cterm=NONE ctermfg=5  ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE    guisp=NONE
highlight Constant     cterm=NONE ctermfg=9  ctermbg=NONE gui=NONE guifg=#f99157 guibg=NONE    guisp=NONE
highlight Define       cterm=NONE ctermfg=5  ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE    guisp=NONE
highlight Delimiter    cterm=NONE ctermfg=14 ctermbg=NONE gui=NONE guifg=#d27b53 guibg=NONE    guisp=NONE
highlight Float        cterm=NONE ctermfg=9  ctermbg=NONE gui=NONE guifg=#f99157 guibg=NONE    guisp=NONE
highlight Function     cterm=NONE ctermfg=4  ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE    guisp=NONE
highlight Identifier   cterm=NONE ctermfg=1  ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE    guisp=NONE
highlight Include      cterm=NONE ctermfg=4  ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE    guisp=NONE
highlight Keyword      cterm=NONE ctermfg=5  ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE    guisp=NONE
highlight Label        cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE    guisp=NONE
highlight Number       cterm=NONE ctermfg=9  ctermbg=NONE gui=NONE guifg=#f99157 guibg=NONE    guisp=NONE
highlight Operator     cterm=NONE ctermfg=7  ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE    guisp=NONE
highlight PreProc      cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE    guisp=NONE
highlight Repeat       cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE    guisp=NONE
highlight SpecialChar  cterm=NONE ctermfg=14 ctermbg=NONE gui=NONE guifg=#d27b53 guibg=NONE    guisp=NONE
highlight Special      cterm=NONE ctermfg=6  ctermbg=NONE gui=NONE guifg=#66cccc guibg=NONE    guisp=NONE
highlight Statement    cterm=NONE ctermfg=1  ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE    guisp=NONE
highlight StorageClass cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE    guisp=NONE
highlight String       cterm=NONE ctermfg=2  ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE    guisp=NONE
highlight Structure    cterm=NONE ctermfg=5  ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE    guisp=NONE
highlight Tag          cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE    guisp=NONE
highlight Todo         cterm=NONE ctermfg=3  ctermbg=8    gui=NONE guifg=#ffcc66 guibg=#393939 guisp=NONE
highlight Type         cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE    guisp=NONE
highlight Typedef      cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE    guisp=NONE

" C
highlight cOperator  cterm=NONE ctermfg=6 ctermbg=NONE gui=NONE guifg=#66cccc guibg=NONE guisp=NONE
highlight cPreCondit cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE

" C#
highlight csClass                cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight csAttribute            cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight csModifier             cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight csType                 cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE guisp=NONE
highlight csUnspecifiedStatement cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight csContextualStatement  cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight csNewDecleration       cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE guisp=NONE

" CSS
highlight cssBraces    cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight cssClassName cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight cssColor     cterm=NONE ctermfg=6 ctermbg=NONE gui=NONE guifg=#66cccc guibg=NONE guisp=NONE

" Diff
highlight DiffAdded   cterm=NONE ctermfg=2 ctermbg=0 gui=NONE guifg=#99cc99 guibg=#2d2d2d guisp=NONE
highlight DiffFile    cterm=NONE ctermfg=1 ctermbg=0 gui=NONE guifg=#f2777a guibg=#2d2d2d guisp=NONE
highlight DiffNewFile cterm=NONE ctermfg=2 ctermbg=0 gui=NONE guifg=#99cc99 guibg=#2d2d2d guisp=NONE
highlight DiffLine    cterm=NONE ctermfg=4 ctermbg=0 gui=NONE guifg=#6699cc guibg=#2d2d2d guisp=NONE
highlight DiffRemoved cterm=NONE ctermfg=1 ctermbg=0 gui=NONE guifg=#f2777a guibg=#2d2d2d guisp=NONE

" Git
highlight gitcommitOverflow      cterm=NONE ctermfg=1  ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE guisp=NONE
highlight gitcommitSummary       cterm=NONE ctermfg=2  ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE guisp=NONE
highlight gitcommitComment       cterm=NONE ctermfg=15 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE guisp=NONE
highlight gitcommitUntracked     cterm=NONE ctermfg=15 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE guisp=NONE
highlight gitcommitDiscarded     cterm=NONE ctermfg=15 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE guisp=NONE
highlight gitcommitSelected      cterm=NONE ctermfg=15 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE guisp=NONE
highlight gitcommitHeader        cterm=NONE ctermfg=5  ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight gitcommitSelectedType  cterm=NONE ctermfg=4  ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight gitcommitUnmergedType  cterm=NONE ctermfg=4  ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight gitcommitDiscardedType cterm=NONE ctermfg=4  ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight gitcommitBranch        cterm=bold ctermfg=9  ctermbg=NONE gui=bold guifg=#f99157 guibg=NONE guisp=NONE
highlight gitcommitUntrackedFile cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight gitcommitUnmergedFile  cterm=bold ctermfg=1  ctermbg=NONE gui=bold guifg=#f2777a guibg=NONE guisp=NONE
highlight gitcommitDiscardedFile cterm=bold ctermfg=1  ctermbg=NONE gui=bold guifg=#f2777a guibg=NONE guisp=NONE
highlight gitcommitSelectedFile  cterm=bold ctermfg=2  ctermbg=NONE gui=bold guifg=#99cc99 guibg=NONE guisp=NONE

" HTML
highlight htmlBold   cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight htmlItalic cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight htmlEndTag cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight htmlTag    cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE

" JavaScript
highlight javaScript          cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight javaScriptBraces    cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight javaScriptNumber    cterm=NONE ctermfg=9 ctermbg=NONE gui=NONE guifg=#f99157 guibg=NONE guisp=NONE
highlight jsOperator          cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight jsStatement         cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight jsReturn            cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight jsThis              cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE guisp=NONE
highlight jsClassDefinition   cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight jsFunction          cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight jsFuncName          cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight jsFuncCall          cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight jsClassFuncName     cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight jsClassMethodType   cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight jsRegexpString      cterm=NONE ctermfg=6 ctermbg=NONE gui=NONE guifg=#66cccc guibg=NONE guisp=NONE
highlight jsGlobalObjects     cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight jsGlobalNodeObjects cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight jsExceptions        cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight jsBuiltins          cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE

" Mail
highlight mailQuoted1 cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight mailQuoted2 cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE guisp=NONE
highlight mailQuoted3 cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight mailQuoted4 cterm=NONE ctermfg=6 ctermbg=NONE gui=NONE guifg=#66cccc guibg=NONE guisp=NONE
highlight mailQuoted5 cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight mailQuoted6 cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight mailURL     cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight mailEmail   cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE

" Markdown
highlight markdownCode             cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE    guisp=NONE
highlight markdownError            cterm=NONE ctermfg=7 ctermbg=0    gui=NONE guifg=#d3d0c8 guibg=#2d2d2d guisp=NONE
highlight markdownCodeBlock        cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE    guisp=NONE
highlight markdownHeadingDelimiter cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE    guisp=NONE

" PHP
highlight phpMemberSelector cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight phpComparison     cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight phpParent         cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE

" Python
highlight pythonOperator cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight pythonRepeat   cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE

" Ruby
highlight rubyAttribute              cterm=NONE ctermfg=4  ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight rubyConstant               cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight rubyInterpolationDelimiter cterm=NONE ctermfg=14 ctermbg=NONE gui=NONE guifg=#d27b53 guibg=NONE guisp=NONE
highlight rubyRegexp                 cterm=NONE ctermfg=6  ctermbg=NONE gui=NONE guifg=#66cccc guibg=NONE guisp=NONE
highlight rubySymbol                 cterm=NONE ctermfg=2  ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE guisp=NONE
highlight rubyStringDelimiter        cterm=NONE ctermfg=2  ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE guisp=NONE

" SASS
highlight sassidChar    cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE guisp=NONE
highlight sassClassChar cterm=NONE ctermfg=9 ctermbg=NONE gui=NONE guifg=#f99157 guibg=NONE guisp=NONE
highlight sassInclude   cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight sassMixing    cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight sassMixinName cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE

" User
highlight User1 cterm=NONE ctermfg=1 ctermbg=8 gui=NONE guifg=NONE guibg=NONE guisp=NONE
highlight User2 cterm=NONE ctermfg=2 ctermbg=8 gui=NONE guifg=NONE guibg=NONE guisp=NONE
highlight User3 cterm=NONE ctermfg=3 ctermbg=8 gui=NONE guifg=NONE guibg=NONE guisp=NONE
highlight User4 cterm=NONE ctermfg=4 ctermbg=8 gui=NONE guifg=NONE guibg=NONE guisp=NONE
