set tabstop=4 shiftwidth=4
set equalprg=indent\ -linux

map <leader>f gg=G:w

function CTemplate()
	0r ~/.vim/skeleton.c
	4
endfunction

" TODO this works on ~/.vim/vimrc
au BufNewFile *.c call CTemplate()
