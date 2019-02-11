call maps#MapEmmet()
call cwd#ChangeOnInsert()

" make Vim recognize ES6 import statements
let &l:include = 'from\|require'

" allow Vim to parse path aliases such as ~/components or @/components
" which are common in Vue projects
setlocal isfname+=@-@
setlocal suffixesadd+=.js
let &l:includeexpr = "path#resolve_alias(['~', '@'], ['src', 'app'], v:fname)"

" make Vim use ES6 export statements as define statements
let &l:define = '\v(export\s+(default\s+)?)?(var|let|const|(async\s+)?function|class)|export\s+'

" define convenience sniplets
let s:snippets_map={
  \ "log": "console.log(",
  \ "warn": "console.warn(",
  \ "json": "JSON.stringify",
  \ "jlog": "console.log(JSON.stringify(, null, 2))\<C-o>2F,",
  \ "tlog": "this.$log(",
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

" define convenience map for passing down handler props
inoremap <buffer> <C-@>xp <Left><C-o>"zyiw:<C-r>z="<C-o>e<Right>"
