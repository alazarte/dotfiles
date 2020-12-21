compiler typescript

set isfname=@-@,a-z,A-Z,/,.,-,_,~
set expandtab shiftwidth=2 softtabstop=2
set wildignore=**/node_modules/**,dist/**
set grepprg=grep\ -n\ --exclude-dir=node_modules\ --exclude-dir=dist
set include=^\\s*import\\s*{\\s*[a-zA-Z]\\+\\(\\(,\\s*[a-zA-Z]\\+\\)\\+\\)\\?\\s*}\\s*from\\s*[\\'\\"]\\zs\\(@\\/\\)\\?[a-z-\\/\\._]*\\ze[\\'\\"]\\;

function! TypescriptInclude(fname)
	" TODO: check if begins with 'component/asd' should be 'src/app/component/...'
        " let f = substitute(f, '^[a-z]', 'src/app/', '')
        " let f = substitute(a:fname, '@', 'src/app', '')
        let f = substitute(a:fname, '^\./', 'src/app/', '')
        let ff = f . '.ts'
        if ! filereadable(ff)
          return f . '/index.ts'
        endif
        return ff
	" TODO here I should check for the import name, and replace
	" like SomeImport to some.import, e.g.:
	" import { SomeService } from '@/_services';
	" return expand('%')
endfunction

setlocal includeexpr=TypescriptInclude(v:fname)
" TODO had to replace it in VIMRUNTIME, it doesn't work here...
"setlocal define=^\\s*export\\s\\(class\\|interface\\)\\s*\\|^\\s*\\ze*?\\?:\\s[a-z]*;
