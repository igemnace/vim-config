" allow spell check
setlocal spell

" limit line length
setlocal textwidth=80

" define convenience command for calculating total working hours in diary
command! -buffer -range=% TWH <line1>,<line2>call diary#compute_twh()
