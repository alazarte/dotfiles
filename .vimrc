syntax on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Setters {{{

set tabstop=4                       "4 space tab
set shiftwidth=4                    "The amount to block indent when using < and >
set expandtab                       "Replaces a <TAB> with spaces--more portable
set smarttab
set smartindent
set wildmenu
set wildmode=list:longest,full      " Cool wildmenu
set relativenumber                  " first relative, then number to use hybrid
set number
set incsearch                       " Start highlight while writing
set hlsearch                        " Highlighted search
set showcmd                         " see the pressed command keys
set listchars=nbsp:_,trail:.        " show trailing and not wanted blank characters
set listchars+=precedes:@,extends:@
set listchars=tab:>-,nbsp:_,trail:. " show trailing and not wanted blank characters
set list
set textwidth=80
set modeline
set smarttab
set path+=**
set hidden

set clipboard=unnamedplus

" }}}

" Explorer Configuration {{{

let g:netrw_banner = 0

" }}}

" Mapping {{{

" New line ctrl+j | k
nnoremap <C-k> O<Esc>j
nnoremap <C-j> o<Esc>k
" Faster scrolling
nnoremap <C-d> 5<C-e>
nnoremap <C-u> 5<C-y>

nnoremap <F6> :setlocal spell! spelllang=en_us<CR>

" Clipboard
noremap <F7> :w !xclip -selection clipboard<CR><CR>
nnoremap <S-F7> :r!xclip -o<CR>

noremap <C-L> 20zl
noremap <C-H> 20zh
nnoremap <C-P> :FZF<CR>
"}}}

" Folding {{{

set foldenable
set foldlevel=0
set foldcolumn=0
set foldmethod=marker           " detect triple-{ style fold markers

" }}}

" Highlight {{{

colorscheme boring

" }}}
