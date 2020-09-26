function! locationinsert#loadjsonfile() abort
   let l:fileLineLen = line('$')

   let l:bufferText = getline(1, l:fileLineLen)

   let s:V = vital#locationinsert#new()
   let s:J = s:V.import('Web.JSON')


   echo l:bufferText[0]
   call system("curl ".g:locationinsert#url."/insertlocation -X POST -H \"Content-Type: application/json\" -d '".l:bufferText[0]."'")
endfunction
