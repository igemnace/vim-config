function! diary#compute_twh() range abort
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
