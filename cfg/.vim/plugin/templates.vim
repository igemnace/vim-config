" guard against multiple sourcing
if exists("g:loaded_templates")
  finish
endif
let g:loaded_templates=1

if !exists("g:templates_dir")
  let g:templates_dir=$HOME."/.vim/skeletons"
endif

if !exists("g:enable_templates")
  let g:enable_templates=1
endif

function! EnableAutoTemplate()
  let g:auto_templates_on=1

  augroup TemplateLoading
    autocmd!

    " React templates
    autocmd BufNewFile *.component.jsx execute "0r ".g:templates_dir."/react/component.jsx"
    autocmd BufNewFile *.hoc.jsx execute "0r " . g:templates_dir . "/react/hoc.jsx"

    " React Native templates
    autocmd BufNewFile *.component.js execute "0r " . g:templates_dir . "/react-native/component.js"
    autocmd BufNewFile *.hoc.js execute "0r " . g:templates_dir . "/react-native/hoc.js"
    autocmd BufNewFile *.styles.js execute "0r " . g:templates_dir . "/react-native/styles.js"

    " filetype templates
    autocmd BufNewFile * silent! execute "0r " . g:templates_dir . "/" . &filetype . "." . expand("%:e") 
  augroup END
endfunction

function! DisableAutoTemplate()
  unlet g:auto_templates_on

  augroup TemplateLoading
    autocmd!
  augroup END
endfunction

function! ManualLoadTemplate(type, template)
  execute "0r " . g:templates_dir . "/" . a:type . "/" . a:template
endfunction

" enable template loading by default
if g:enable_templates
  call EnableAutoTemplate()
endif

" define commands for template functions
command! -nargs=0 EnableTemplates call EnableAutoTemplate()
command! -nargs=0 DisableTemplates call DisableAutoTemplate()
command! -nargs=+ LoadTemplate call ManualLoadTemplate(<f-args>)
