" make Vim recognize ES6 import statements
let &l:include = 'from\|require'

" make Vim use ES6 export statements as define statements
let &l:define = '\v(export\s+(default\s+)?)?(var|let|const|function|class)|export\s+'

setlocal textwidth=80

" define convenience sniplets
let s:snippets_map={
  \ "log": "console.log(",
  \ "warn": "console.warn(",
  \ "json": "JSON.stringify",
  \ "jlog": "console.log(JSON.stringify(, null, 2))\<C-o>2F,",
  \ "fn": "() => {}",
  \ "pobj": "PropTypes.object",
  \ "pfn": "PropTypes.func",
  \ "parr": "PropTypes.arrayOf(",
  \ "pstr": "PropTypes.string",
  \ "pbool": "PropTypes.bool",
  \ "pshape": "PropTypes.shape({",
  \ "pnum": "PropTypes.number",
  \ "pany": "PropTypes.any",
  \ "pnode": "PropTypes.node",
  \ "pone": "PropTypes.oneOf([",
  \ "ptypes": "static propTypes = {",
  \ "defprops": "static defaultProps = {",
  \ "ctypes": "static contextTypes = {",
  \ "constructor": "constructor(props) {super(props);",
  \ "cwm": "componentWillMount() {",
  \ "cdm": "componentDidMount() {",
  \ "scu": "shouldComponentUpdate(nextProps, nextState) {",
  \ "cwrp": "componentWillReceiveProps(nextProps) {",
  \ "cwu": "componentWillUpdate() {",
  \ "cdu": "componentDidUpdate() {",
  \ "cwum": "componentWillUnmount() {",
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
inoremap <buffer> <C-@>xp <C-o>"zyiw<C-r>z={<End>}
  \<C-o>:s/handle/on<CR><C-o>:let @/ = ""<CR><End>

augroup JavascriptInsert
  " make Vim respect relative paths for file completion
  autocmd! InsertEnter <buffer> let b:save_cwd = getcwd() | lcd %:p:h
  autocmd! InsertLeave <buffer> execute 'lcd' fnameescape(b:save_cwd)
augroup END
