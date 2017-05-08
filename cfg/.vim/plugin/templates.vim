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

function! s:ShortenTemplateFilename(index, filename)
  execute "return fnamemodify('" . a:filename . "', "
    \ . "':s?" . g:templates_dir . "/??')"
endfunction

function! s:CompleteTemplates(ArgLead, CmdLine, CursorPos)
  let l:path_list=globpath(g:templates_dir, a:ArgLead . "**", 0, 1)
  let l:files_path_list=filter(l:path_list, "!isdirectory(v:val)")
  let l:relative_path_list=map(l:files_path_list,
    \ function("s:ShortenTemplateFilename"))

  return l:relative_path_list
endfunction
""" END FUNCTIONS }

""" COMMANDS {
" define commands for template functions
command! -nargs=0 EnableTemplates call s:EnableTemplates()
command! -nargs=0 DisableTemplates call s:DisableTemplates()
command! -nargs=0 ToggleTemplates call s:ToggleTemplates()
command! -nargs=1 -complete=customlist,s:CompleteTemplates LoadTemplate
  \ call s:LoadTemplate(<f-args>)
""" END COMMANDS }

""" MISC {
" enable template loading by default
if g:templates_autoload
  call s:enableTemplates()
endif
""" END MISC }
