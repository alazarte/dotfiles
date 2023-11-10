" VIMWIKI:
let g:vimwiki_list = [{ 'path': '~/Documents/wiki' }]
" For markdown syntax only:
"let g:vimwiki_list = [{ 'path': '~/Documents/vimwiki',
"      \ 'syntax': 'markdown', 'ext': '.wiki',
"      \ 'path_html': '~/Documents/vimwiki/html' }]


" LSP:
"if executable('gopls')
"    " pip install python-lsp-server
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'gopls',
"        \ 'cmd': {server_info->['gopls']},
"        \ 'allowlist': ['go'],
"        \ })
"endif

function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=yes
	if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
	nmap <buffer> gd <plug>(lsp-definition)
	nmap <buffer> gs <plug>(lsp-document-symbol-search)
	nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
	nmap <buffer> gr <plug>(lsp-references)
	nmap <buffer> gi <plug>(lsp-implementation)
	nmap <buffer> gt <plug>(lsp-type-definition)
	" nmap <buffer> <leader>rn <plug>(lsp-rename)
	" nmap <buffer> [g <plug>(lsp-previous-diagnostic)
	" nmap <buffer> ]g <plug>(lsp-next-diagnostic)
	nmap <buffer> <leader>lh <plug>(lsp-hover)
	nmap <buffer> <leader>ls <plug>(lsp-signature-help)
	nmap <buffer> <leader>ld <plug>(lsp-document-diagnostics)
	nnoremap <buffer> <expr><PageUp> lsp#scroll(+4)
	nnoremap <buffer> <expr><PageDown> lsp#scroll(-4)

	let g:lsp_format_sync_timeout = 1000
	autocmd! BufWritePre *.rs,*.go,*.py call execute('LspDocumentFormatSync')

	" refer to doc to add more commands
endfunction

augroup lsp_install
	au!
	" call s:on_lsp_buffer_enabled only for languages that has the server registered.
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_virtual_text_enabled=0
" virtual text appear below status line instead
let g:lsp_diagnostics_echo_cursor=0
let g:lsp_hover_ui='preview'
let g:lsp_preview_float=0
let g:lsp_signature_help_enabled = 0
