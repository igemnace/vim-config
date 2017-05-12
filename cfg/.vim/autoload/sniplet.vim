" creates a Sniplet by executing an appropriate abbrev
" optional params:
" 1. mode for abbrev
" 2. modifier for abbrev
function! sniplet#Abbrev(trigger, pattern, expansion, ...)
  " use first optional argument to determine whether to use iabbrev or cabbrev
  if exists("a:1") && a:1 ==? "i"
    let l:abbrev_command = "iabbrev"
  elseif exists("a:1") && a:1 ==? "c"
    let l:abbrev_command = "cabbrev"
  else
    " define a default, modeless abbrev command
    let l:abbrev_command = "abbreviate"
  endif

  " use second optional argument as modifier for abbrev
  if exists("a:2")
    let l:modifier = a:2
  else
    " define a default, empty modifier for abbrev
    let l:modifier = ""
  endif

  " append the trigger to the pattern
  " to form the left-hand side of the abbrev command
  let l:lhs = a:pattern . a:trigger

  " execute the abbrev
  execute l:abbrev_command l:modifier l:lhs a:expansion
endfunction
