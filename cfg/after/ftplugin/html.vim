" make Vim recognize stylesheet imports
let &l:include = '<link\>.*\<rel="stylesheet".*\<href="\zs\S\{-}\ze"'

" set up emmet maps
call maps#MapEmmet()

" set up nicer soft breaks
setlocal wrap
setlocal linebreak
setlocal breakindent
