set expandtab shiftwidth=1 softtabstop=1
" set foldenable foldmethod=indent foldlevel=0
map <tab> /\(^\\| \)\zs[a-zA-Z_-]\+\.[a-zA-Z_-]\+\ze\($\\| \)\\|http[s]\?:\/\/\(www\.\)\?[^ ]\+<cr>:noh<cr>
