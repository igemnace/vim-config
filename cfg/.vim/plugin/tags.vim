""" DECLARATIONS {{{
" guard against multiple loaded instances
if exists("g:loaded_tags")
  finish
endif

" declare plugin has loaded
let g:loaded_tags = 1

" define default tagsprg (analogue to makeprg and grepprg)
" default: ctags
if !exists("g:tagsprg")
  let g:tagsprg = "ctags"
endif
""" END DECLARATIONS }}}

""" COMMANDS {{{
" define a command to run g:tagsprg
command! -nargs=0 TagsGenerate execute "!" g:tagsprg

" define a wrapper command to set g:tagsprg
command! -nargs=+ TagsPrg let g:tagsprg=<q-args>
""" END COMMANDS }}}

" vim:fdm=marker
