" make Vim recognize import statements
let &l:include = 'from\|require'

" allow Vim to parse path aliases such as ~/components or @/components
" which are common in Vue projects
setlocal isfname+=@-@
let &l:includeexpr = "path#resolve_alias(['~', '@app-cms', '@'], ['src/app', 'src', 'app'], v:fname)"

" make Vim use export statements as define statements
let &l:define = '\v(export\s+(default\s+)?)?(var|let|const|(async\s+)?function|class|type)|export\s+'

setlocal textwidth=80

" define convenience sniplets
let s:snippets_map={
  \ "log": "console.log(",
  \ "warn": "console.warn(",
  \ "json": "JSON.stringify",
  \ "jlog": "console.log(JSON.stringify(, null, 2))\<C-o>2F,",
  \ "fn": "() => {}",
  \ }

for [s:pattern, s:expansion] in items(s:snippets_map)
  execute "ISnipletBuffer" s:pattern s:expansion
endfor

CSnipletBuffer json JSON.stringify
CSnipletBuffer warn console.warn
CSnipletBuffer log console.log

" define convenience map for destructuring
inoremap <buffer> <C-@>xx ;<C-o>Bconst {} = <C-o>F}<Space><Space><Left>
inoremap <buffer> <C-@>xi ';<C-o>B'<Left>import {} from <C-o>F}

" allow filename completion with import * from ../<C-x><C-f>
call cwd#ChangeOnInsert()
