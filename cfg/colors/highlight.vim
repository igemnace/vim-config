" setup
highlight clear
syntax reset
let g:colors_name = 'highlight'

" editor colors
highlight Bold             cterm=NONE gui=NONE gui=NONE
highlight ColorColumn      cterm=NONE gui=NONE ctermbg=8 guibg=#393939
highlight Conceal          cterm=NONE gui=NONE ctermfg=4 ctermbg=0 guifg=#6699cc guibg=#2d2d2d
highlight CursorColumn     cterm=NONE gui=NONE ctermbg=8 guibg=#393939
highlight Cursor           cterm=NONE gui=NONE ctermfg=0 ctermbg=7 guifg=#2d2d2d guibg=#d3d0c8
highlight CursorLineNr     cterm=NONE gui=NONE ctermfg=15 ctermbg=0 guifg=#a09f93 guibg=#393939
highlight CursorLine       cterm=NONE gui=NONE ctermbg=8 guibg=#393939
highlight Debug            cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight DiffAdd          cterm=bold gui=NONE ctermfg=2 ctermbg=8 guifg=#99cc99 guibg=#393939
highlight DiffChange       cterm=NONE gui=NONE ctermfg=15 ctermbg=8 guifg=#747369 guibg=#393939
highlight DiffDelete       cterm=NONE gui=NONE ctermfg=1 ctermbg=8 guifg=#f2777a guibg=#393939
highlight DiffText         cterm=bold gui=NONE ctermfg=3 ctermbg=8 guifg=#6699cc guibg=#393939
highlight Directory        cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight EndOfBuffer      cterm=NONE gui=NONE ctermfg=15
highlight ErrorMsg         cterm=NONE gui=NONE ctermfg=1 ctermbg=0 guifg=#f2777a guibg=#2d2d2d
highlight Error            cterm=NONE gui=NONE ctermfg=0 ctermbg=1 guifg=#2d2d2d guibg=#f2777a
highlight Exception        cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight FoldColumn       cterm=NONE gui=NONE ctermfg=6 ctermbg=10 guifg=#66cccc guibg=#393939
highlight Folded           cterm=NONE gui=NONE ctermfg=15 ctermbg=8 guifg=#747369 guibg=#393939
highlight Ignore           cterm=NONE gui=NONE ctermfg=0 guifg=bg
highlight IncSearch        cterm=NONE gui=NONE ctermfg=8 ctermbg=15 guifg=#393939 guibg=#f99157
highlight lCursor          cterm=NONE gui=NONE guifg=bg guibg=fg
highlight LineNr           cterm=NONE gui=NONE ctermfg=15 ctermbg=0 guifg=#747369 guibg=#393939
highlight Macro            cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight MatchParen       cterm=NONE gui=NONE ctermbg=8 guifg=#2d2d2d guibg=#747369
highlight ModeMsg          cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99
highlight MoreMsg          cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99
highlight NonText          cterm=NONE gui=NONE ctermfg=8 guifg=#747369
highlight Normal           cterm=NONE gui=NONE ctermfg=7 ctermbg=0 guifg=#d3d0c8 guibg=#2d2d2d
highlight Pmenu            cterm=NONE gui=NONE ctermfg=15 ctermbg=8 guifg=#a09f93 guibg=#393939
highlight PmenuSbar        cterm=NONE gui=NONE ctermbg=248 guibg=Grey
highlight PmenuSel         cterm=NONE gui=NONE ctermfg=3 ctermbg=8 guifg=#393939 guibg=#a09f93
highlight PmenuThumb       cterm=NONE gui=NONE ctermbg=15 guibg=White
highlight Question         cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight Search           cterm=NONE gui=NONE ctermfg=8 ctermbg=15 guifg=#747369 guibg=#ffcc66
highlight SignColumn       cterm=NONE gui=NONE ctermfg=8 ctermbg=0 guifg=#747369 guibg=#393939
highlight SpecialKey       cterm=NONE gui=NONE ctermfg=15 guifg=#747369
highlight SpellBad         cterm=NONE gui=NONE ctermbg=0 guibg=#2d2d2d guisp=#f2777a
highlight SpellCap         cterm=NONE gui=NONE ctermbg=0 guibg=#2d2d2d guisp=#6699cc
highlight SpellLocal       cterm=NONE gui=NONE ctermbg=0 guibg=#2d2d2d guisp=#66cccc
highlight SpellRare        cterm=NONE gui=NONE ctermbg=0 guibg=#2d2d2d guisp=#cc99cc
highlight StatusLineNC     cterm=NONE gui=NONE ctermfg=15 ctermbg=8 guifg=#747369 guibg=#393939
highlight StatusLine       cterm=NONE gui=NONE ctermfg=15 ctermbg=8 guifg=#a09f93 guibg=#515151
highlight StatusLineTermNC cterm=NONE gui=NONE ctermfg=15 ctermbg=8 guifg=bg guibg=LightGreen
highlight StatusLineTerm   cterm=NONE gui=NONE ctermfg=15 ctermbg=8 guifg=bg guibg=LightGreen
highlight TabLineFill      cterm=NONE gui=NONE ctermfg=8 ctermbg=8 guifg=#747369 guibg=#393939
highlight TabLineSel       cterm=NONE gui=NONE ctermfg=3 ctermbg=8 guifg=#99cc99 guibg=#393939
highlight TabLine          cterm=NONE gui=NONE ctermfg=15 ctermbg=8 guifg=#747369 guibg=#393939
highlight Title            cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight ToolbarButton    cterm=NONE gui=NONE ctermfg=0 ctermbg=7 guifg=Black guibg=LightGrey
highlight ToolbarLine      cterm=NONE gui=NONE ctermbg=242 guibg=Grey50
highlight TooLong          cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight Underlined       cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight VertSplit        cterm=NONE gui=NONE ctermfg=11 ctermbg=0 guifg=#515151 guibg=#515151
highlight VisualNOS        cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight Visual           cterm=NONE gui=NONE ctermbg=8 guibg=#515151
highlight WarningMsg       cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight WildMenu         cterm=NONE gui=NONE ctermfg=3 ctermbg=8 guifg=#f2777a guibg=#ffcc66
highlight link PreCondit      PreProc
highlight link QuickFixLine   Search
highlight link SpecialComment Special
highlight clear Italic

" standard syntax
highlight Boolean      cterm=NONE gui=NONE ctermfg=9 guifg=#f99157
highlight Character    cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight Comment      cterm=NONE gui=NONE ctermfg=15 guifg=#747369
highlight Conditional  cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight Constant     cterm=NONE gui=NONE ctermfg=9 guifg=#f99157
highlight Define       cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight Delimiter    cterm=NONE gui=NONE ctermfg=14 guifg=#d27b53
highlight Float        cterm=NONE gui=NONE ctermfg=9 guifg=#f99157
highlight Function     cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight Identifier   cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight Include      cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight Keyword      cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight Label        cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight Number       cterm=NONE gui=NONE ctermfg=9 guifg=#f99157
highlight Operator     cterm=NONE gui=NONE ctermfg=7 guifg=#d3d0c8
highlight PreProc      cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight Repeat       cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight SpecialChar  cterm=NONE gui=NONE ctermfg=14 guifg=#d27b53
highlight Special      cterm=NONE gui=NONE ctermfg=6 guifg=#66cccc
highlight Statement    cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight StorageClass cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight String       cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99
highlight Structure    cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight Tag          cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight Todo         cterm=NONE gui=NONE ctermfg=3 ctermbg=8 guifg=#ffcc66 guibg=#393939
highlight Type         cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight Typedef      cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66

" C
highlight cOperator  cterm=NONE gui=NONE ctermfg=6 guifg=#66cccc
highlight cPreCondit cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc

" C#
highlight csClass                cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight csAttribute            cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight csModifier             cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight csType                 cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight csUnspecifiedStatement cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight csContextualStatement  cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight csNewDecleration       cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a

" CSS
highlight cssBraces    cterm=NONE gui=NONE ctermfg=7 guifg=#d3d0c8
highlight cssClassName cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight cssColor     cterm=NONE gui=NONE ctermfg=6 guifg=#66cccc

" Diff
highlight DiffAdded   cterm=NONE gui=NONE ctermfg=2 ctermbg=0 guifg=#99cc99 guibg=#2d2d2d
highlight DiffFile    cterm=NONE gui=NONE ctermfg=1 ctermbg=0 guifg=#f2777a guibg=#2d2d2d
highlight DiffNewFile cterm=NONE gui=NONE ctermfg=2 ctermbg=0 guifg=#99cc99 guibg=#2d2d2d
highlight DiffLine    cterm=NONE gui=NONE ctermfg=4 ctermbg=0 guifg=#6699cc guibg=#2d2d2d
highlight DiffRemoved cterm=NONE gui=NONE ctermfg=1 ctermbg=0 guifg=#f2777a guibg=#2d2d2d

" Git
highlight gitcommitOverflow      cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight gitcommitSummary       cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99
highlight gitcommitComment       cterm=NONE gui=NONE ctermfg=15 guifg=#747369
highlight gitcommitUntracked     cterm=NONE gui=NONE ctermfg=15 guifg=#747369
highlight gitcommitDiscarded     cterm=NONE gui=NONE ctermfg=15 guifg=#747369
highlight gitcommitSelected      cterm=NONE gui=NONE ctermfg=15 guifg=#747369
highlight gitcommitHeader        cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight gitcommitSelectedType  cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight gitcommitUnmergedType  cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight gitcommitDiscardedType cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight gitcommitBranch        cterm=NONE gui=NONE ctermfg=9 guifg=#f99157
highlight gitcommitUntrackedFile cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight gitcommitUnmergedFile  cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight gitcommitDiscardedFile cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight gitcommitSelectedFile  cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99

" HTML
highlight htmlBold   cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight htmlItalic cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight htmlEndTag cterm=NONE gui=NONE ctermfg=7 guifg=#d3d0c8
highlight htmlTag    cterm=NONE gui=NONE ctermfg=7 guifg=#d3d0c8

" JavaScript
highlight javaScript          cterm=NONE gui=NONE ctermfg=7 guifg=#d3d0c8
highlight javaScriptBraces    cterm=NONE gui=NONE ctermfg=7 guifg=#d3d0c8
highlight javaScriptNumber    cterm=NONE gui=NONE ctermfg=9 guifg=#f99157
highlight jsOperator          cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight jsStatement         cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight jsReturn            cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight jsThis              cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight jsClassDefinition   cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight jsFunction          cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight jsFuncName          cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight jsFuncCall          cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight jsClassFuncName     cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight jsClassMethodType   cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight jsRegexpString      cterm=NONE gui=NONE ctermfg=6 guifg=#66cccc
highlight jsGlobalObjects     cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight jsGlobalNodeObjects cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight jsExceptions        cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight jsBuiltins          cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66

" Mail
highlight mailQuoted1 cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight mailQuoted2 cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99
highlight mailQuoted3 cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight mailQuoted4 cterm=NONE gui=NONE ctermfg=6 guifg=#66cccc
highlight mailQuoted5 cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight mailQuoted6 cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight mailURL     cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight mailEmail   cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc

" Markdown
highlight markdownCode             cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99
highlight markdownError            cterm=NONE gui=NONE ctermfg=7 ctermbg=0 guifg=#d3d0c8 guibg=#2d2d2d
highlight markdownCodeBlock        cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99
highlight markdownHeadingDelimiter cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc

" PHP
highlight phpMemberSelector cterm=NONE gui=NONE ctermfg=7 guifg=#d3d0c8
highlight phpComparison     cterm=NONE gui=NONE ctermfg=7 guifg=#d3d0c8
highlight phpParent         cterm=NONE gui=NONE ctermfg=7 guifg=#d3d0c8

" Python
highlight pythonOperator cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight pythonRepeat   cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc

" Ruby
highlight rubyAttribute              cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc
highlight rubyConstant               cterm=NONE gui=NONE ctermfg=3 guifg=#ffcc66
highlight rubyInterpolationDelimiter cterm=NONE gui=NONE ctermfg=14 guifg=#d27b53
highlight rubyRegexp                 cterm=NONE gui=NONE ctermfg=6 guifg=#66cccc
highlight rubySymbol                 cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99
highlight rubyStringDelimiter        cterm=NONE gui=NONE ctermfg=2 guifg=#99cc99

" SASS
highlight sassidChar    cterm=NONE gui=NONE ctermfg=1 guifg=#f2777a
highlight sassClassChar cterm=NONE gui=NONE ctermfg=9 guifg=#f99157
highlight sassInclude   cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight sassMixing    cterm=NONE gui=NONE ctermfg=5 guifg=#cc99cc
highlight sassMixinName cterm=NONE gui=NONE ctermfg=4 guifg=#6699cc

" User
highlight User1 cterm=NONE gui=NONE ctermfg=1 ctermbg=8
highlight User2 cterm=NONE gui=NONE ctermfg=2 ctermbg=8
highlight User3 cterm=NONE gui=NONE ctermfg=3 ctermbg=8
highlight User4 cterm=NONE gui=NONE ctermfg=4 ctermbg=8
