syn match Normal /\*/ conceal
syn match Separator /^----$/
syn match Header /^#\+\s.*$/
syn match Item /^-\ze\s.*$/
syn match Bold /\*[^*]\+\*/
syn match Todo /TODO/
hi Separator ctermfg=blue
hi Header ctermfg=magenta
hi Item ctermfg=yellow
hi Bold cterm=bold

