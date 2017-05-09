" make Vim recognize ES6 import statements
setlocal include=^import.\\+from

" make Vim use ES6 export statements as define statements
setlocal define=^export\\s\\(var\\\|let\\\|const\\\|function\\\|default\\\|class\\)\\{,2}
