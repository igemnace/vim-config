function! wiki#generate_version_logs(...) range abort
  execute a:firstline . ',' . a:lastline 'y'
  SScratch
  0put
  $d
  %s/*/-

  if a:0 && a:1 ==? 'flat'
    " flatten into 1-per-row format
    %g/^===/+1;+2d
    %g/^\s\+-/d
    %v/./d
    %s/^- (.*)/- /
  elseif a:0 && a:1 ==? 'pr'
    " extract only PR numbers
    %g/^===/+1;+2d
    %g/^\s\+-/d
    %v/./d
    %s/^- (\(.*\)).*/\1/
  else
    %s/=== \(.*\) ===/\1
  endif

  %y +
  redraw!
  echom 'Version logs copied to clipboard!'
endfunction

function! wiki#generate_changelogs() range abort
  execute a:firstline . ',' . a:lastline 'y'
  SScratch
  0put
  $d
  " format version header
  /===/s/=== \(.*\) ===/"version": "v\1",
  +1s/.*/\='"date": ' . localtime() . '000,'
  +1s/.*/"description": "&",
  " save header in register h
  1,.d h
  " format logs
  1d
  %s/"/\\"/ge
  g/\v^\* (\(.*\)) (feat|refactor|fix): (.*)/s//"tag": "\2",\r"title":"\3",
  g/^  \* \(.*\)/s//"description": "\1"
  g/^"tag":/normal! O{
  g/^"description":/normal! o},
  g/^"/normal! >>
  $s/,$//
  " surround log with array
  1normal! O"logs": [
  $normal! o]
  2,$-1>
  " reinsert header
  0put h
  " surround with object
  1normal! O{
  $normal! o}
  2,$-1>
  " copy completed buffer
  %y +
  nohlsearch
  redraw!
  echom 'Changelogs copied to clipboard!'
endfunction
