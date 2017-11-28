" Note: :View depends on scratch.vim

command! -nargs=+ -complete=command R redir @"|silent <args>|redir END|put "
command! -nargs=+ -complete=command View SScratch | R <args>
