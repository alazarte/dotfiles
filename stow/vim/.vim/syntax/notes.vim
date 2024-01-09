syn match TodoDone /^\s*#\s.*$/
syn match TodoUrgent /^\s*!\s.*$/
syn match TodoMeh /^\s*\~\s.*$/
syn match TodoItem /^\s*-\ze\s.*$/
syn match TodoHeader /^[A-Z0-9 ]\+:$/
syn match TodoBold /\*[^\*]\+\*/
syn match TodoLink /http[s]\?:\/\/\(www\.\)\?[^ ]\+/
syn match TodoFile /\(\~\|\/\)[A-Za-z\/\.]\+\( \|$\)/

" TODO a single time
au Colorscheme * hi TodoItem ctermfg=yellow
au Colorscheme * hi TodoLink cterm=underline ctermfg=lightblue
au Colorscheme * hi! link TodoHeader Title
au Colorscheme * hi! link TodoDone MoreMsg
au Colorscheme * hi! link TodoUrgent ErrorMsg
au Colorscheme * hi! link TodoBold ModeMsg
au Colorscheme * hi TodoMeh ctermfg=245
au Colorscheme * hi TodoFile cterm=underline
