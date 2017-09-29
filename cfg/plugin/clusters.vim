" Author: LeoNerd on #vim

" A cluster fills in the gap in sizes, between individual characters, and
" words/WORDS. A cluster is a continuous run of characters in one of the
" following cases:
"   an optional capital letter, followed by lowercase letters, optionally
"     ended by an _
"   digits

" classify a character into lower, Upper, space, other iskeyword-allowed,
"   others
function! s:classify(char)
  if match(a:char, '\l') > -1 | return "l" | endif
  if match(a:char, '\u') > -1 | return "U" | endif
  if match(a:char, '\s') > -1 | return " " | endif
  if match(a:char, '\k') > -1 | return "_" | endif
  return "#"
endf

" generic hare+tortoise position hunting functions
"
" BEWARE: line and col are 1-based positions in the buffer, but the
"   string[idx] operator is 0-based; hence the -1's
function! s:forward(line, col, until)
  let cnum = a:col
  let line = getline(a:line)
  let linelen = len(line)

  let hare = s:classify(line[cnum-1])

  while 1
    let tort = hare
    let hare = s:classify(line[cnum+1-1])
    let test = tort . hare
    if has_key(a:until, test)
      if a:until[test] | return cnum | endif
      return cnum + 1
    endif
    if cnum >= linelen | return -1 | endif
    let cnum = cnum + 1
  endw
endf

function! s:backward(line, col, until)
  let cnum = a:col
  let line = getline(a:line)
  let linelen = len(line)

  let hare = s:classify(line[cnum-1])

  while 1
    let tort = hare
    let hare = s:classify(line[cnum-1-1])
    let test = hare . tort
    if has_key(a:until, test) 
      if a:until[test] | return cnum-1 | endif
      return cnum 
    endif
    if cnum <= 1 | return -1 | endif
    let cnum = cnum - 1
  endw
endf

" dicts containing valid start-of-cluster patterns
" starts after a space or punctuation, or on the Upper before a lower or isk
let Cluster_Start = {' l': 0, ' U': 0, ' _': 0, ' #': 0, '#l': 0, '#U': 0, '#_': 0, '_l': 0, 'Ul': 1, 'U_': 1 }

function Cluster_Back()
  let cnum = col(".") - 1
  let lnum = line(".")

  while 1
    if cnum == -1 || cnum <= 1
      if lnum == 1 | return | endif
      let lnum = lnum - 1
      let cnum = len(getline(lnum))
    else
      let cnum = s:backward(lnum, cnum, g:Cluster_Start)
      if cnum != -1 | break | endif
    endif
  endw
  
  call cursor(lnum, cnum)
endf

function Cluster_Forward()
  let cnum = col(".") + 1
  let lnum = line(".")

  while 1
    if cnum == -1 || cnum > len(getline(lnum))
      if lnum == line("$") | return | endif
      let lnum = lnum + 1
      let cnum = 0
    else
      let cnum = s:forward(lnum, cnum, g:Cluster_Start)
      if cnum != -1 | break | endif
    endif
  endw

  call cursor(lnum, cnum)
endf

" terminal hack
if !has('gui_running')
  silent! execute "set <S-Left>=\<Esc>[1;2D"
  silent! execute "set <S-Right>=\<Esc>[1;2C"
  silent! execute "set <S-Del>=\<Esc>[3;2~"
endif

map  <S-Left>  :call Cluster_Back()<CR>
imap <S-Left>  <S-Left>
map  <S-Right> :call Cluster_Forward()<CR>
imap <S-Right> <S-Right>

imap <S-BS>  <Left>"_dv<S-Left>
map  <S-Del> d<S-Right>
imap <S-Del> "_d<S-Right>
