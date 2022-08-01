syn match Done /^\s*#\s.*$/
syn match Urgent /^\s*!\s.*$/
syn match Meh /^\s*\~\s.*$/
syn match Item /^\s*-\ze\s.*$/
syn match Header /^[A-Z_]\+:$/
syn match Bold /\*\zs.*\ze\*/

hi Item ctermfg=yellow
hi Header ctermfg=magenta
hi Done ctermfg=lightgreen
hi Urgent ctermfg=red
hi Bold cterm=bold
hi Meh ctermfg=gray
