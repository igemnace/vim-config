" source own javascript config, as they are mostly transferrable
source ~/.vim/after/ftplugin/javascript.vim

" add type and enum to define statements
let &l:define = '\v(export\s+(default\s+)?)?(var|let|const|(async\s+)?function|class|type|enum)|export\s+'
