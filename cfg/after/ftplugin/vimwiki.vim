" allow spell check
setlocal spell

" limit line length
setlocal textwidth=80

" define convenience command for calculating total working hours in diary
command! -buffer -range=% TWH <line1>,<line2>call diary#compute_twh()

" define convenience command for grabbing previous tasks for standup report
command! -buffer Standup silent call diary#extract_standup()

" define convenience command for grabbing today's tasks for completion report
command! -buffer CompletionReport silent call diary#extract_completion()

" define convenience command for generating non-wiki-syntax version logs
command! -buffer -range -nargs=* VersionLogs <line1>,<line2>call wiki#generate_version_logs(<f-args>)

" define convenience command for generating JSON change logs
command! -buffer -range ChangeLogs <line1>,<line2>call wiki#generate_changelogs()
