""" DECLARATIONS {{{
" guard against multiple loaded instances
if exists("g:loaded_sniplet")
  finish
endif

" declare plugin has loaded
let g:loaded_sniplet = 1

" define default abbreviation trigger
" default: <Expand>
if !exists("g:sniplet_trigger")
  let g:sniplet_trigger="<Expand>"
endif
""" END DECLARATIONS }}}

""" FUNCTIONS {{{
" receives <f-args> from a user-facing command as a list
" and extracts the pattern and the expansion for the Sniplet
function! s:ReceiveArgs(args)
  " first word will always be the pattern
  let l:pattern = a:args[0]

  " second word onwards will be the expansion
  let l:expansion = join(a:args[1:])

  return [l:pattern, l:expansion]
endfunction

" define functions for creating Sniplets
" relying on s:ReceiveArgs to parse <f-args> passed from user-facing commands
function! s:Sniplet(...)
  let [l:pattern, l:expansion] = s:ReceiveArgs(a:000)

  call sniplet#Abbrev(g:sniplet_trigger, l:pattern, l:expansion)
endfunction

function! s:ISniplet(...)
  let [l:pattern, l:expansion] = s:ReceiveArgs(a:000)

  call sniplet#Abbrev(g:sniplet_trigger, l:pattern, l:expansion, "i")
endfunction

function! s:CSniplet(...)
  let [l:pattern, l:expansion] = s:ReceiveArgs(a:000)

  call sniplet#Abbrev(g:sniplet_trigger, l:pattern, l:expansion, "c")
endfunction

function! s:SnipletBuffer(...)
  let [l:pattern, l:expansion] = s:ReceiveArgs(a:000)

  call sniplet#Abbrev(
    \ g:sniplet_trigger, l:pattern, l:expansion, "", "<buffer>")
endfunction

function! s:ISnipletBuffer(...)
  let [l:pattern, l:expansion] = s:ReceiveArgs(a:000)

  call sniplet#Abbrev(
    \ g:sniplet_trigger, l:pattern, l:expansion, "i", "<buffer>")
endfunction

function! s:CSnipletBuffer(...)
  let [l:pattern, l:expansion] = s:ReceiveArgs(a:000)

  call sniplet#Abbrev(
    \ g:sniplet_trigger, l:pattern, l:expansion, "c", "<buffer>")
endfunction
""" END FUNCTIONS }}}

""" COMMANDS {{{
" define commands for letting the user create Sniplets
command! -nargs=+ Sniplet call s:Sniplet(<f-args>)
command! -nargs=+ ISniplet call s:ISniplet(<f-args>)
command! -nargs=+ CSniplet call s:CSniplet(<f-args>)
command! -nargs=+ SnipletBuffer call s:SnipletBuffer(<f-args>)
command! -nargs=+ ISnipletBuffer call s:ISnipletBuffer(<f-args>)
command! -nargs=+ CSnipletBuffer call s:CSnipletBuffer(<f-args>)
""" END COMMANDS }}}

""" MAPPINGS {{{
" define <Plug> mappings for Insert and Command modes
" so user can use whatever keybinds they want
execute "inoremap <Plug>SnipletExpand" g:sniplet_trigger . "<C-]>"
execute "cnoremap <Plug>SnipletExpand" g:sniplet_trigger . "<C-]>"
""" END MAPPINGS }}}

" vim:fdm=marker
