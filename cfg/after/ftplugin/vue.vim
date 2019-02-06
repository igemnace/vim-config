call maps#MapEmmet()
call cwd#ChangeOnInsert()

" make Vim recognize ES6 import statements
let &l:include = 'from\|require'
let &l:includeexpr = "substitute(v:fname, '\\~', getcwd() . '/app', '')"

" make Vim use ES6 export statements as define statements
let &l:define = '\v(export\s+(default\s+)?)?(var|let|const|(async\s+)?function|class)|export\s+'

" define convenience sniplets
let s:snippets_map={
  \ "log": "console.log(",
  \ "warn": "console.warn(",
  \ "json": "JSON.stringify",
  \ "jlog": "console.log(JSON.stringify(, null, 2))\<C-o>2F,",
  \ }

for [s:pattern, s:expansion] in items(s:snippets_map)
  execute "ISnipletBuffer" s:pattern s:expansion
endfor

CSnipletBuffer json JSON.stringify
CSnipletBuffer warn console.warn
CSnipletBuffer log console.log

