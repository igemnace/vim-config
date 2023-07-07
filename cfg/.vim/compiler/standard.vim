if exists('current_compiler')
  finish
endif
let current_compiler = 'standard'

CompilerSet errorformat=%f:%l:%c:%m
CompilerSet makeprg=standard
