" MAPPINGS:
nn <leader>s :set spell!<cr>
nn <leader>v :e $RTP/vimrc<cr>
nn <leader>V :e $RTP<cr>
nn <leader>o :source $RTP/vimrc<cr>
nn <leader>e :NvimTreeToggle<cr>
nn <leader>g :Sr<cr>
nn <leader>G :grep 
nn <leader>p :FZF<cr>
nn <leader>n :windo set number! relativenumber!<cr>
nn <c-n>     :tab new<cr>

" meta+backspace sends two keys to terminal, escape and then BS
inoremap <esc><bs> <c-w>
" this doesn't work
" inoremap <m-bs> <c-w>
inoremap <c-w> <nop>

cnoremap <esc><bs> <c-w>
" cnoremap <m-bs> <c-w>
cnoremap <c-w> <nop>

map <leader>c :call ClearReg()<CR>
