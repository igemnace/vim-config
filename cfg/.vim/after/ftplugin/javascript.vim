" make Vim recognize ES6 import statements
setlocal include=^import.\\+from

" make Vim use ES6 export statements as define statements
setlocal define=^export\\s\\(var\\\|let\\\|const\\\|function\\\|default\\\|class\\)\\{,2}

let s:snippets_map={
  \ "log": "console.log(",
  \ "warn": "console.warn(",
  \ "json": "JSON.stringify",
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

inoremap <buffer> <C-@>x ;<C-o>Bconst {} = <C-o>F}<Space><Space><Left>
