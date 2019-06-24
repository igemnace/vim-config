" deprecated format
function! diary#compute_twh_legacy() range abort
  let total_hours = 0
  let time_pattern = '`\(.\{-}\)`'
  let lines = getline(a:firstline, a:lastline)

  for line in lines
    if line !~? time_pattern
      continue
    endif

    let [_, time; rest] = matchlist(line, time_pattern)
    let [time_diff] = systemlist('qalc -t ' . time)
    let hours = -str2float(time_diff) 

    if line !~# 'BREAK'
      let total_hours += hours
    endif
  endfor

  let output = 'TWH: ' . string(total_hours)
  execute a:lastline . 'put =output'
endfunction

function! diary#compute_twh() range abort
  let total_hours = 0
  let time_pattern = '`\(.\{-}\)`'
  let lines = getline(a:firstline, a:lastline)
  let cur_time = ''
  let time_dict = {}

  for line in lines
    if line !~? time_pattern
      if line =~# 'Break'
        let time_dict[cur_time] = 0
      endif
      continue
    endif

    let [_, cur_time; rest] = matchlist(line, time_pattern)
    let [time_diff] = systemlist('qalc -t ' . cur_time)
    let hours = -str2float(time_diff) 
    let time_dict[cur_time] = hours
  endfor

  for hours in values(time_dict)
    let total_hours += hours
  endfor

  let output = '`Total` - ' . string(total_hours) . 'hrs'
  execute a:lastline . 'put =output'
endfunction

function! diary#get_prev_entry() abort
  let diary_dir = expand('%:h')
  " use GNU date because I'm not in the mood for date manipulation
  let date_offset = 1
  let prev_datestamp = systemlist('date -I -d "' . date_offset . ' days ago"')[0]
  let file = diary_dir . '/' . prev_datestamp . '.wiki'

  while !filereadable(file)
    let date_offset = date_offset + 1
    let prev_datestamp = systemlist('date -I -d "' . date_offset . ' days ago"')[0]
    let file = diary_dir . '/' . prev_datestamp . '.wiki'
  endwhile

  return file
endfunction

function! diary#extract_standup() abort
  let prev = diary#get_prev_entry()
  execute 'split' prev
  1
  redir => rawlines
  /Daily Report/,$g/^- /p
  redir END

  let lines = split(rawlines, '\n')
  let tasks = []
  for line in lines
    if line !~? '^- ' || line =~# 'Break' || line =~? 'standup'
      continue
    endif
    call add(tasks, substitute(line, '^- ', '', ''))
  endfor
  let tasks = list#uniq(tasks)

  q
  /PREV/
  execute "normal! A \<C-r>=join(tasks, ', ')\<CR>\<Esc>"
endfunction
