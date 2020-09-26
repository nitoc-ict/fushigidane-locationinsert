let s:save_cpo = &cpo
set cpo&vim

let g:locationinsert#url = 'http://localhost:5000'

command! InsertData call locationinsert#loadjsonfile()

let &cpo = s:save_cpo
unlet s:save_cpo
