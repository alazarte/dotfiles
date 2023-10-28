set showcmd
set path=.,**
" the 'virtual' dir is what I choose to use to name the virtual env directory in python
set grepprg=grep\ -niIr\ --exclude-dir={.git,node_modules,venv}
set incsearch
set wildmode=longest:list
set spelllang=en_us,es
set laststatus=2
set mouse=
set guicursor=
set hls
set list
set listchars=trail:-,lead:.,tab:>\ 
" set listchars=trail:-,tab:>\ 
set shortmess-=S
set conceallevel=0
set number
set cursorline
set noswapfile
set ignorecase
set smartcase
set complete-=i
set cc=80

set foldmethod=marker
" I don't want actions like { or } when moving to open a fold
set foldopen=search
set foldenable
set conceallevel=0
set relativenumber
set statusline=

" read file automatically when changed on disk
set autoread

" COLORSCHEME:
set background=light
colorscheme mine

