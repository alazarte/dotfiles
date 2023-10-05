syn match TextItem '^-\ze .*$'
syn match TxtTitle '^[a-zA-Z]\+:$'

hi! link TxtTitle PreProc
hi! link TextItem Constant
