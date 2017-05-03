""" DECLARATIONS {
" guard against multiple loaded instances
if exists("g:loaded_templates")
  finish
endif

" declare plugin has loaded
let g:loaded_templates=1

" define default templates directory
" default: $HOME/.vim/skeletons
if !exists("g:templates_dir")
  let g:templates_dir=$HOME."/.vim/skeletons"
endif

" define default autoload behavior
" default: on
if !exists("g:templates_autoload")
  let g:templates_autoload=1
endif

" define default template mappings
" default: empty dict
if !exists("g:templates_mappings")
  let g:templates_mappings={}
endif
""" END DECLARATIONS }

""" FUNCTIONS {
" returns the load command for a template
function! s:loadCmd(template)
  return "0r " . g:templates_dir . "/" . a:template
endfunction

" executes the load command from s:loadCmd()
function! s:loadTemplate(template)
  execute s:loadCmd(a:template)
endfunction

" attaches the load command from s:loadCmd() to an autocmd
function! s:attachAutocmd(pattern, template)
  execute "autocmd BufNewFile " . a:pattern . " " . s:loadCmd(a:template)
endfunction

" runs s:attachAutocmd() for each pattern-template pair in g:templates_mappings
function! s:enableTemplates()
  let s:templates_enabled=1

  augroup TemplateLoading
    autocmd!

    for [pattern, template] in items(g:templates_mappings)
      call s:attachAutocmd(pattern, template)
    endfor
  augroup END
endfunction

" clears all autocmds set by s:enableTemplates()
function! s:disableTemplates()
  unlet s:templates_enabled

  augroup TemplateLoading
    autocmd!
  augroup END
endfunction

" toggles s:enableTemplates() and s:disableTemplates()
function! s:toggleTemplates()
  if exists("s:templates_enabled") && s:templates_enabled
    call s:disableTemplates()
  else
    call s:enableTemplates()
  endif
endfunction
""" END FUNCTIONS }

""" COMMANDS {
" define commands for template functions
command! -nargs=0 EnableTemplates call s:enableTemplates()
command! -nargs=0 DisableTemplates call s:disableTemplates()
command! -nargs=0 ToggleTemplates call s:toggleTemplates()
command! -nargs=1 LoadTemplate call s:loadTemplate(<f-args>)
""" END COMMANDS }

""" MISC {
" enable template loading by default
if g:templates_autoload
  call s:enableTemplates()
endif
""" END MISC }
