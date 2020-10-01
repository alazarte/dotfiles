set expandtab shiftwidth=2 softtabstop=2
set path=src/**
set wildignore=*node_modules/*
set grepprg=grep\ -n\ --exclude-dir=node_modules/
set include=^\\s*import\\s*{\\s*[a-zA-Z_,\\s]*\\s*}\\s*from\\s*\\zs[\\'\\"][a-z-\\/\\.]*[\\'\\"]\\;

function! TypescriptInclude(fname)
	let f = substitute(a:fname, "'\\.\\/", 'src/app/', 'g')
	let ff = substitute(f, "\[;'\]", '', 'g')
	return './' . ff . '.ts'
endfunction

setlocal includeexpr=TypescriptInclude(v:fname)
setlocal define=^\\s*export\\s\\(class\\|interface\\)\\s*\\|^\\s*\\ze*?\\?:\\s[a-z]*;
