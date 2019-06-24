" Note: :View depends on scratch.vim

command! -nargs=+ -complete=command R silent call ex#read(<q-args>)
command! -nargs=+ -complete=command View silent call ex#view(<q-args>)
