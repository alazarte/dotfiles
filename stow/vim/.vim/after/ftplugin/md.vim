augroup mdBuild
	" This deletes any prev defined autocmd, does it removes default ones
	" too?
	" autocmd!

	autocmd BufWritePost *.md :silent ! md2pdf %
augroup END
