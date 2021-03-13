" memo
" Author: Yuigishi
" License: MIT

".vimrc上で let g:memo_saved_dir = '$HOME/memo'
" let g:memo_preview=0 なら垂直 1なら水平
let s:check_variable = exists("memo_preview")

" memoをspで開くかvsで開くかを決める
function! g:memo_start() abort
   let s:current_dir = execute 'pwd'
   execute 'cd' memo_saved_dir

   if memo_preview
      execute 'new' 
   else
      " 0 垂直でウィンドウを開く
      execute 'vnew'
   endif
endfunction

function! g:memo_list abort
   if memo_preview
      execute 'sp' memo_saved_dir
   else
      execute 'vs' memo_saved_dir
   endif
endfunction
