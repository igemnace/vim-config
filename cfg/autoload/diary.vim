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

" Parses daily report task lines from current buffer
function! s:parse_daily_report() abort
  1
  redir => rawlines
  /Daily Report/,$g/^- /p
  redir END
  return rawlines
endfunction

" Expects buffer lines in daily report format as a single argument
" Returns an array of daily tasks
function! s:extract_tasks(rawlines) abort
  let lines = split(a:rawlines, '\n')
  let tasks = []
  for line in lines
    if line !~? '^- ' || line =~# 'Break' || line =~? 'standup'
      continue
    endif
    call add(tasks, substitute(line, '^- ', '', ''))
  endfor
  return list#uniq(tasks)
endfunction

function! diary#extract_standup() abort
  " grab previous day's daily report
  VimwikiDiaryPrevDay
  let rawlines = s:parse_daily_report()

  " extract tasks from daily report
  let tasks = s:extract_tasks(rawlines)

  " append comma-separated tasks to PREV: line in standup report
  b#
  /PREV/
  execute "normal! A \<C-r>=join(tasks, ', ')\<CR>\<Esc>"
endfunction

function! diary#extract_completion() abort
  " grab current day's daily report
  let rawlines = s:parse_daily_report()

  " extract tasks from daily report
  let tasks = s:extract_tasks(rawlines)

  " append completion report
  $put =nr2char(10)
  $LoadTemplate completion-report.wiki

  " append tasks, one per line
  $put =map(tasks, {k, v -> '0. ' . v})

  " Copy total to end
  $put =nr2char(10)
  1
  /`Total` -/copy $
  $s/`Total` -/Total Day Hours:/
  $s/hrs//
endfunction
