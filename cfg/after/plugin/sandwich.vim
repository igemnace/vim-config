" use surround.vim mappings
" to avoid clobbering s
runtime macros/sandwich/keymap/surround.vim

" mimic surround.vim's behavior with spaces inside {
" since it's useful for working with JS destructuring syntax
" vs object construction syntax
let g:sandwich#recipes += [
      \   {'buns': ['{ ', ' }'], 'nesting': 1, 'match_syntax': 1,
      \    'kind': ['add', 'replace'], 'action': ['add'], 'input': ['{']},
      \
      \   {'buns': ['[ ', ' ]'], 'nesting': 1, 'match_syntax': 1,
      \    'kind': ['add', 'replace'], 'action': ['add'], 'input': ['[']},
      \
      \   {'buns': ['( ', ' )'], 'nesting': 1, 'match_syntax': 1,
      \    'kind': ['add', 'replace'], 'action': ['add'], 'input': ['(']},
      \
      \   {'buns': ['{\s*', '\s*}'],   'nesting': 1, 'regex': 1,
      \    'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'],
      \    'action': ['delete'], 'input': ['{']},
      \
      \   {'buns': ['\[\s*', '\s*\]'], 'nesting': 1, 'regex': 1,
      \    'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'],
      \    'action': ['delete'], 'input': ['[']},
      \
      \   {'buns': ['(\s*', '\s*)'],   'nesting': 1, 'regex': 1,
      \    'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'],
      \    'action': ['delete'], 'input': ['(']},
      \ ]

" use gs to surround instead of ys, for a better mnemonic: "go surround"
nmap gs <Plug>(operator-sandwich-add)
xmap gs <Plug>(operator-sandwich-add)
nunmap ys
xunmap S

" remove s mappings because I actually like s
nunmap sr
nunmap sd
nunmap sa
nunmap srb
nunmap sdb
xunmap sr
xunmap sd
xunmap sa

" disable highlight feature
call operator#sandwich#set('all', 'all', 'highlight', 0)
