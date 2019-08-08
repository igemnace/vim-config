" setup
highlight clear
syntax reset
let g:colors_name = 'highlight'

" editor colors
highlight Bold             cterm=bold      ctermfg=NONE ctermbg=NONE gui=bold      guifg=NONE    guibg=NONE    guisp=NONE
highlight ColorColumn      cterm=NONE      ctermfg=NONE ctermbg=237  gui=NONE      guifg=NONE    guibg=#303030 guisp=NONE
highlight Conceal          cterm=NONE      ctermfg=4    ctermbg=0    gui=NONE      guifg=#6699cc guibg=#2d2d2d guisp=NONE
highlight CursorColumn     cterm=NONE      ctermfg=NONE ctermbg=237  gui=NONE      guifg=NONE    guibg=#303030 guisp=NONE
highlight Cursor           cterm=NONE      ctermfg=0    ctermbg=7    gui=NONE      guifg=#2d2d2d guibg=#d3d0c8 guisp=NONE
highlight CursorLineNr     cterm=NONE      ctermfg=8    ctermbg=0    gui=NONE      guifg=#747369 guibg=#2d2d2d guisp=NONE
highlight CursorLine       cterm=NONE      ctermfg=NONE ctermbg=237  gui=NONE      guifg=NONE    guibg=#303030 guisp=NONE
highlight Debug            cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE    guisp=NONE
highlight DiffAdd          cterm=bold      ctermfg=2    ctermbg=237  gui=bold      guifg=#99cc99 guibg=#303030 guisp=NONE
highlight DiffChange       cterm=NONE      ctermfg=8    ctermbg=237  gui=NONE      guifg=#747369 guibg=#303030 guisp=NONE
highlight DiffDelete       cterm=NONE      ctermfg=1    ctermbg=237  gui=NONE      guifg=#f2777a guibg=#303030 guisp=NONE
highlight DiffText         cterm=bold      ctermfg=3    ctermbg=237  gui=bold      guifg=#ffcc66 guibg=#303030 guisp=NONE
highlight Directory        cterm=NONE      ctermfg=4    ctermbg=NONE gui=NONE      guifg=#6699cc guibg=NONE    guisp=NONE
highlight EndOfBuffer      cterm=NONE      ctermfg=8    ctermbg=NONE gui=NONE      guifg=#747369 guibg=NONE    guisp=NONE
highlight ErrorMsg         cterm=NONE      ctermfg=1    ctermbg=0    gui=NONE      guifg=#f2777a guibg=#2d2d2d guisp=NONE
highlight Error            cterm=NONE      ctermfg=0    ctermbg=1    gui=NONE      guifg=#2d2d2d guibg=#f2777a guisp=NONE
highlight FoldColumn       cterm=NONE      ctermfg=6    ctermbg=10   gui=NONE      guifg=#66cccc guibg=#99cc99 guisp=NONE
highlight Folded           cterm=NONE      ctermfg=8    ctermbg=237  gui=NONE      guifg=#747369 guibg=#303030 guisp=NONE
highlight Ignore           cterm=NONE      ctermfg=0    ctermbg=NONE gui=NONE      guifg=#2d2d2d guibg=NONE    guisp=NONE
highlight IncSearch        cterm=NONE      ctermfg=237  ctermbg=8    gui=NONE      guifg=#303030 guibg=#747369 guisp=NONE
highlight lCursor          cterm=NONE      ctermfg=NONE ctermbg=NONE gui=NONE      guifg=NONE    guibg=NONE    guisp=NONE
highlight LineNr           cterm=NONE      ctermfg=8    ctermbg=0    gui=NONE      guifg=#747369 guibg=#2d2d2d guisp=NONE
highlight Macro            cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE    guisp=NONE
highlight MatchParen       cterm=NONE      ctermfg=NONE ctermbg=237  gui=NONE      guifg=NONE    guibg=#303030 guisp=NONE
highlight ModeMsg          cterm=bold      ctermfg=2    ctermbg=NONE gui=bold      guifg=#99cc99 guibg=NONE    guisp=NONE
highlight MoreMsg          cterm=NONE      ctermfg=2    ctermbg=NONE gui=NONE      guifg=#99cc99 guibg=NONE    guisp=NONE
highlight NonText          cterm=NONE      ctermfg=8    ctermbg=NONE gui=NONE      guifg=#747369 guibg=NONE    guisp=NONE
highlight Normal           cterm=NONE      ctermfg=7    ctermbg=0    gui=NONE      guifg=#d3d0c8 guibg=#2d2d2d guisp=NONE
highlight Pmenu            cterm=NONE      ctermfg=8    ctermbg=237  gui=NONE      guifg=#747369 guibg=#303030 guisp=NONE
highlight PmenuSbar        cterm=NONE      ctermfg=NONE ctermbg=237  gui=NONE      guifg=NONE    guibg=#303030 guisp=NONE
highlight PmenuSel         cterm=NONE      ctermfg=3    ctermbg=237  gui=NONE      guifg=#ffcc66 guibg=#303030 guisp=NONE
highlight PmenuThumb       cterm=NONE      ctermfg=NONE ctermbg=8    gui=NONE      guifg=NONE    guibg=#747369 guisp=NONE
highlight Question         cterm=NONE      ctermfg=4    ctermbg=NONE gui=NONE      guifg=#6699cc guibg=NONE    guisp=NONE
highlight QuickFixLine     cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE    guibg=NONE    guisp=NONE
highlight Search           cterm=NONE      ctermfg=237  ctermbg=8    gui=NONE      guifg=#303030 guibg=#747369 guisp=NONE
highlight SignColumn       cterm=NONE      ctermfg=237  ctermbg=0    gui=NONE      guifg=#303030 guibg=#2d2d2d guisp=NONE
highlight SpecialKey       cterm=NONE      ctermfg=8    ctermbg=NONE gui=NONE      guifg=#747369 guibg=NONE    guisp=NONE
highlight SpellBad         cterm=underline ctermfg=7    ctermbg=0    gui=underline guifg=#d3d0c8 guibg=#2d2d2d guisp=NONE
highlight SpellCap         cterm=NONE      ctermfg=NONE ctermbg=0    gui=NONE      guifg=NONE    guibg=#2d2d2d guisp=NONE
highlight SpellLocal       cterm=NONE      ctermfg=NONE ctermbg=0    gui=NONE      guifg=NONE    guibg=#2d2d2d guisp=NONE
highlight SpellRare        cterm=NONE      ctermfg=NONE ctermbg=0    gui=NONE      guifg=NONE    guibg=#2d2d2d guisp=NONE
highlight StatusLineNC     cterm=NONE      ctermfg=8    ctermbg=237  gui=NONE      guifg=#747369 guibg=#303031 guisp=NONE
highlight StatusLine       cterm=NONE      ctermfg=8    ctermbg=237  gui=NONE      guifg=#747369 guibg=#303030 guisp=NONE
highlight StatusLineTermNC cterm=NONE      ctermfg=8    ctermbg=237  gui=NONE      guifg=#747369 guibg=#303030 guisp=NONE
highlight StatusLineTerm   cterm=NONE      ctermfg=8    ctermbg=237  gui=NONE      guifg=#747369 guibg=#303030 guisp=NONE
highlight TabLineFill      cterm=NONE      ctermfg=237  ctermbg=237  gui=NONE      guifg=#303030 guibg=#303030 guisp=NONE
highlight TabLineSel       cterm=NONE      ctermfg=3    ctermbg=237  gui=NONE      guifg=#ffcc66 guibg=#303030 guisp=NONE
highlight TabLine          cterm=NONE      ctermfg=8    ctermbg=237  gui=NONE      guifg=#747369 guibg=#303030 guisp=NONE
highlight Title            cterm=NONE      ctermfg=4    ctermbg=NONE gui=NONE      guifg=#6699cc guibg=NONE    guisp=NONE
highlight TooLong          cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE    guisp=NONE
highlight Underlined       cterm=underline ctermfg=1    ctermbg=NONE gui=underline guifg=#f2777a guibg=NONE    guisp=NONE
highlight VertSplit        cterm=NONE      ctermfg=0    ctermbg=0    gui=NONE      guifg=#2d2d2d guibg=#2d2d2d guisp=NONE
highlight VisualNOS        cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE    guisp=NONE
highlight Visual           cterm=NONE      ctermfg=NONE ctermbg=237  gui=NONE      guifg=NONE    guibg=#303030 guisp=NONE
highlight WarningMsg       cterm=NONE      ctermfg=1    ctermbg=NONE gui=NONE      guifg=#f2777a guibg=NONE    guisp=NONE
highlight WildMenu         cterm=NONE      ctermfg=3    ctermbg=237  gui=NONE      guifg=#ffcc66 guibg=#303030 guisp=NONE
highlight clear Italic

" standard syntax
highlight Boolean     cterm=NONE ctermfg=1  ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE    guisp=NONE
highlight Comment     cterm=NONE ctermfg=8  ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE    guisp=NONE
highlight Constant    cterm=NONE ctermfg=1  ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE    guisp=NONE
highlight Delimiter   cterm=NONE ctermfg=7  ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE    guisp=NONE
highlight Identifier  cterm=NONE ctermfg=7  ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE    guisp=NONE
highlight Keyword     cterm=NONE ctermfg=5  ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE    guisp=NONE
highlight Number      cterm=NONE ctermfg=1  ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE    guisp=NONE
highlight Operator    cterm=NONE ctermfg=7  ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE    guisp=NONE
highlight SpecialChar cterm=NONE ctermfg=14 ctermbg=NONE gui=NONE guifg=#66cccc guibg=NONE    guisp=NONE
highlight Special     cterm=NONE ctermfg=6  ctermbg=NONE gui=NONE guifg=#66cccc guibg=NONE    guisp=NONE
highlight String      cterm=NONE ctermfg=2  ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE    guisp=NONE
highlight Tag         cterm=NONE ctermfg=3  ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE    guisp=NONE
highlight Todo        cterm=NONE ctermfg=3  ctermbg=237  gui=NONE guifg=#ffcc66 guibg=#303030 guisp=NONE
highlight! link Character    String
highlight! link Conditional  Keyword
highlight! link PreProc      Include
highlight! link Define       Include
highlight! link Macro        Include
highlight! link Exception    Keyword
highlight! link Float        Number
highlight! link Function     Identifier
highlight! link Include      Keyword
highlight! link Label        Keyword
highlight! link Repeat       Keyword
highlight! link StorageClass Keyword
highlight! link Statement    Keyword
highlight! link Structure    Keyword
highlight! link Type         Keyword
highlight! link Typedef      Keyword

" Help
highlight! link helpHyperTextJump Keyword

" CSS
highlight cssBraces    cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight! link cssAttr           Identifier
highlight! link cssClassName      Identifier
highlight! link cssColor          Identifier
highlight! link cssImportant      Identifier
highlight! link cssProp           Identifier
highlight! link cssPseudoClassId  Identifier
highlight! link cssUnitDecorators Identifier
highlight! link cssValueLength    Identifier
highlight! link cssValueNumber    Identifier
highlight! link cssValueTime      Identifier
highlight! link cssVendor         Identifier
highlight! link cssKeyFrameProp   cssProp

" Diff
highlight DiffAdded   cterm=NONE ctermfg=2 ctermbg=0 gui=NONE guifg=#99cc99 guibg=#2d2d2d guisp=NONE
highlight DiffFile    cterm=NONE ctermfg=1 ctermbg=0 gui=NONE guifg=#f2777a guibg=#2d2d2d guisp=NONE
highlight DiffNewFile cterm=NONE ctermfg=2 ctermbg=0 gui=NONE guifg=#99cc99 guibg=#2d2d2d guisp=NONE
highlight DiffLine    cterm=NONE ctermfg=4 ctermbg=0 gui=NONE guifg=#6699cc guibg=#2d2d2d guisp=NONE
highlight DiffRemoved cterm=NONE ctermfg=1 ctermbg=0 gui=NONE guifg=#f2777a guibg=#2d2d2d guisp=NONE

" Git
highlight gitcommitOverflow      cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE guisp=NONE
highlight gitcommitSummary       cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE guisp=NONE
highlight gitcommitComment       cterm=NONE ctermfg=8 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE guisp=NONE
highlight gitcommitUntracked     cterm=NONE ctermfg=8 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE guisp=NONE
highlight gitcommitDiscarded     cterm=NONE ctermfg=8 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE guisp=NONE
highlight gitcommitSelected      cterm=NONE ctermfg=8 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE guisp=NONE
highlight gitcommitHeader        cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight gitcommitSelectedType  cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight gitcommitUnmergedType  cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight gitcommitDiscardedType cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#6699cc guibg=NONE guisp=NONE
highlight gitcommitBranch        cterm=bold ctermfg=9 ctermbg=NONE gui=bold guifg=#f2777a guibg=NONE guisp=NONE
highlight gitcommitUntrackedFile cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight gitcommitUnmergedFile  cterm=bold ctermfg=1 ctermbg=NONE gui=bold guifg=#f2777a guibg=NONE guisp=NONE
highlight gitcommitDiscardedFile cterm=bold ctermfg=1 ctermbg=NONE gui=bold guifg=#f2777a guibg=NONE guisp=NONE
highlight gitcommitSelectedFile  cterm=bold ctermfg=2 ctermbg=NONE gui=bold guifg=#99cc99 guibg=NONE guisp=NONE

" Fugitive
highlight fugitiveModifier cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=#f2777a guibg=NONE guisp=NONE
highlight diffSubname      cterm=NONE ctermfg=8 ctermbg=NONE gui=NONE guifg=#747369 guibg=NONE guisp=NONE

" HTML
highlight htmlBold   cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight htmlItalic cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#cc99cc guibg=NONE guisp=NONE
highlight htmlEndTag cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight htmlTag    cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight htmlArg    cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight! link htmlSpecialChar Identifier
highlight! link htmlTitle       Identifier
highlight! link htmlBold        Identifier

" JavaScript
highlight javaScript       cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight javaScriptBraces cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight jsRegexpString   cterm=NONE ctermfg=6 ctermbg=NONE gui=NONE guifg=#66cccc guibg=NONE guisp=NONE
highlight jsBuiltins       cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight jsArrowFunction  cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d3d0c8 guibg=NONE guisp=NONE
highlight jsDocType        cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#ffcc66 guibg=NONE guisp=NONE
highlight! link jsReturn            Keyword
highlight! link jsThis              Keyword
highlight! link jsFuncCall          Identifier
highlight! link jsClassFuncName     Function
highlight! link jsClassDefinition   Identifier
highlight! link jsGlobalObjects     Identifier
highlight! link jsGlobalNodeObjects jsGlobalObjects
highlight! link jsExceptions        jsGlobalObjects
highlight! link jsBuiltins          jsGlobalObjects
highlight! link jsException         Keyword
highlight! link jsTry               Keyword
highlight! link jsCatch             Keyword
highlight! link jsNull              Keyword
highlight! link jsUndefined         jsNull
highlight! link jsObjectKey         Identifier
highlight! link jsDocTypeNoParam    jsDocType
highlight! link jsDocParam          Identifier
highlight! link jsTaggedTemplate    Identifier

" Pug
highlight! link pugClass    Identifier
highlight! link pugPipeChar Identifier
highlight! link pugIdChar   Identifier

" Shell
highlight shOption       cterm=NONE ctermfg=7 ctermbg=0 gui=NONE guifg=#d3d0c8 guibg=#2d2d2d guisp=NONE
highlight shCommandSub   cterm=NONE ctermfg=7 ctermbg=0 gui=NONE guifg=#d3d0c8 guibg=#2d2d2d guisp=NONE
highlight shDeref        cterm=NONE ctermfg=6 ctermbg=0 gui=NONE guifg=#66cccc guibg=#2d2d2d guisp=NONE
highlight shCmdSubRegion cterm=NONE ctermfg=7 ctermbg=0 gui=NONE guifg=#d3d0c8 guibg=#2d2d2d guisp=NONE

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

" Netrw
highlight netrwExe cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#99cc99 guibg=NONE guisp=NONE

" User
highlight User1 cterm=NONE ctermfg=1 ctermbg=237 gui=NONE guifg=#f2777a guibg=#303030 guisp=NONE
highlight User2 cterm=NONE ctermfg=2 ctermbg=237 gui=NONE guifg=#99cc99 guibg=#303030 guisp=NONE
highlight User3 cterm=NONE ctermfg=3 ctermbg=237 gui=NONE guifg=#ffcc66 guibg=#303030 guisp=NONE
highlight User4 cterm=NONE ctermfg=4 ctermbg=237 gui=NONE guifg=#6699cc guibg=#303030 guisp=NONE

" vim: syntax=OFF:nowrap:tw=0
