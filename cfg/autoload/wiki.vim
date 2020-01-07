function! wiki#generate_version_logs() range abort
  execute a:firstline . ',' . a:lastline 'y'
  SScratch
  0put
  $d
  %s/=== \(.*\) ===/\1
  %s/*/-
  %y +
  redraw!
  echom 'Version logs copied to clipboard!'
endfunction
