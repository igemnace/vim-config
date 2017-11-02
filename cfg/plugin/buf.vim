" Author: LemonBoy

func! s:Format(_, what) abort
    let flags = ' +'[a:what.changed]
	\ .     ' %'[a:what.bufnr == bufnr('')]
	\ .     ' #'[a:what.bufnr == bufnr('#')]
    if empty(a:what.name)
	let name = '[No Name]'
    else
	let name = fnamemodify(a:what.name, ':~:.')
    endif
    return printf(" %2d %s %s", a:what.bufnr, flags, name)
endfunc
func! Buf() abort
    let buf_info = getbufinfo({ 'buflisted': 1, 'bufloaded': 1})
    let by_ext = {}
    let res = ''
    " divide in buckets
    for buf in buf_info
	let ext = fnamemodify(buf.name, ':e')
	if empty(ext)
	    let ext = get(buf.variables, 'current_syntax', 'xxx')
	endif
	let by_ext[ext] = add(get(by_ext, ext, []), buf)
    endfor
    for key in sort(keys(by_ext))
	let res .= '[' . key . ']:' . "\n"
	let res .= join(map(by_ext[key], function('s:Format')), "\n") . "\n"
    endfor
    " remove the last '\n'
    let res = res[:-2]
    echo res
endfunc

command! Buf call Buf()
