filetype plugin indent on
syntax on

call plug#begin()

Plug 'junegunn/fzf'
Plug 'vimwiki/vimwiki'
Plug 'lepture/vim-jinja'

" live changes when using the :s command
Plug 'markonm/traces.vim'

" the light coloscheme
Plug 'w0ng/vim-hybrid'

" Plug 'jamessan/vim-gnupg'

" this is horrible for the terminal
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Replace with this? Too much config
" Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Plug 'github/copilot.vim'

" Plug 'preservim/nerdtree'
" Plug 'nvim-tree/nvim-tree.lua'

Plug 'ycm-core/YouCompleteMe'

call plug#end()
