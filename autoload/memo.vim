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

   if memo_start
      " 0 垂直でウィンドウを開く
      execute 'vnew' 
   else
      execute 'new'
   endif
endfunction

