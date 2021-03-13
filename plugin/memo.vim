" すでにスクリプトをロードしていた場合は終了
if exists('g:loaded_memo')
   finish
endif
let g:loaded_memo = 1
command! memo call memo#memo_start()

command! memolist call memo#memo_list()
