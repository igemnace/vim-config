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
  \ "ptypes": "static propTypes = {",
  \ "defprops": "static defaultProps = {",
  \ "ctypes": "static contextTypes = {",
  \ "cwm": "componentWillMount() {",
  \ "cdm": "componentDidMount() {",
  \ "scu": "shouldComponentUpdate(nextProps, nextState) {",
  \ "cwrp": "componentWillReceiveProps(nextProps) {",
  \ "cwu": "componentWillUpdate() {",
  \ "cdu": "componentDidUpdate() {",
  \ "cwum": "componentWillUnmount() {",
  \ "this": "const {} = this;<C-o>F}<Space>",
  \ "props": "const {} = this.props;<C-o>F}<Space>",
  \ "state": "const {} = this.state;<C-o>F}<Space>",
  \ "context": "const {} = this.context;<C-o>F}<Space>",
  \ }

for [pattern, expansion] in items(s:snippets_map)
  execute "ISnipletBuffer" pattern expansion
endfor
