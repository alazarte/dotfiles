" Vim color file
" Maintainer:	The Vim Project <https://github.com/vim/vim>
" Last Change:	2023 Aug 10
" Former Maintainer:	Bram Moolenaar <Bram@vim.org>

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
" set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "default"

" vim: sw=2

if &background ==# "dark"
  hi Blank cterm=NONE ctermfg=NONE ctermbg=NONE
  hi NonText cterm=NONE ctermfg=238 ctermbg=NONE
  hi StatusLine cterm=bold ctermfg=lightgray ctermbg=238
  hi StatusLineNC cterm=NONE ctermfg=gray ctermbg=235
  hi Statement cterm=NONE ctermfg=lightgreen ctermbg=NONE
  hi Comment cterm=NONE ctermfg=243 ctermbg=NONE
  hi Identifier cterm=NONE ctermfg=lightblue ctermbg=NONE
  hi Folded cterm=NONE ctermfg=NONE ctermbg=235
  hi Visual cterm=NONE ctermfg=NONE ctermbg=238
  hi MatchParen cterm=NONE ctermfg=black ctermbg=gray
  hi ColorColumn ctermbg=235

  " LSP colors
  hi LspErrorText ctermfg=red
  hi LspWarningText ctermfg=yellow
  hi LspInformationText ctermfg=cyan
  hi LspHintText ctermfg=gray
  hi LspErrorVirtualText ctermfg=red
  hi LspWarningVirtualText ctermfg=yellow
  hi LspInformationVirtualText ctermfg=cyan
  hi LspHintVirtualText ctermfg=gray

  hi! link Pmenu LineNr
  hi! link PmenuSel CursorLineNr

" LspErrorHighlight xxx cleared
" LspWarningHighlight xxx cleared
" LspInformationHighlight xxx cleared
" LspHintHighlight xxx cleared
" LspErrorText   xxx ctermfg=9
" LspWarningText xxx ctermfg=11
" LspInformationText xxx ctermfg=14
" LspHintText    xxx ctermfg=248
" LspErrorLine   xxx cleared
" LspWarningLine xxx cleared
" LspInformationLine xxx cleared
" LspHintLine    xxx cleared
" LspErrorVirtualText xxx cleared
" LspWarningVirtualText xxx cleared
" LspInformationVirtualText xxx cleared
" LspHintVirtualText xxx cleared
" LspCodeActionText xxx cleared
" LspCodeActionLine xxx cleared


  hi! link SignColumn LineNr

  hi! link CursorLine Blank
  hi! link VertSplit NonText
  hi! link SpecialKey NonText
  hi! link TabLineFill NonText
  hi! link TabLineSel StatusLine
  hi! link TabLine StatusLineNC
  hi! link String Folded
  hi! link PreProc Statement

  hi! link CursorLineNr StatusLine
  hi! link LineNr StatusLineNC

  hi! link Special Blank
  hi! link Type Statement
  hi! link Constant Blank

  hi DiffDelete ctermbg=red ctermfg=52
  hi DiffAdd ctermbg=green ctermfg=22
  hi DiffChange ctermbg=red ctermfg=52
  hi DiffText ctermfg=red ctermbg=52

  hi Todo cterm=bold ctermbg=3

else
  hi Blank cterm=NONE ctermfg=NONE ctermbg=NONE
  hi NonText cterm=NONE ctermfg=248 ctermbg=NONE
  hi StatusLine cterm=bold ctermfg=240 ctermbg=250
  hi StatusLineNC cterm=NONE ctermfg=245 ctermbg=250
  hi Statement cterm=NONE ctermfg=22 ctermbg=NONE
  hi Comment cterm=NONE ctermfg=243
  hi Identifier cterm=NONE ctermfg=18 ctermbg=NONE
  hi Folded cterm=NONE ctermfg=NONE ctermbg=235
  hi Visual cterm=NONE ctermfg=NONE ctermbg=250
  hi MatchParen cterm=NONE ctermfg=black ctermbg=6
  hi CursorLineNr ctermbg=252 ctermfg=245 cterm=bold
  hi LineNr ctermbg=252 ctermfg=245 cterm=NONE
  hi Search ctermbg=184
  hi ColorColumn ctermbg=254

  hi Type ctermfg=18
  hi Directory ctermfg=18
  hi PreProc ctermfg=52
  hi Function ctermfg=22
  hi Title ctermfg=52
  hi Underlined ctermfg=18 cterm=underline
  hi String ctermfg=52
  hi CursorColumn ctermbg=146 ctermfg=NONE

  " LSP highlights, non-exhaustive
  " hi LspErrorHighlight ctermfg=red
  " hi LspWarningHighlight ctermfg=yellow
  " hi LspInformationHighlight ctermfg=cyan
  " hi LspHintHighlight ctermfg=gray
  hi LspErrorText ctermfg=red
  hi LspWarningText ctermfg=black ctermbg=yellow
  hi LspInformationText ctermfg=cyan
  hi LspHintText ctermfg=gray
  " hi LspErrorLine ctermbg=52 ctermfg=160
  " hi LspWarningLine ctermbg=58 ctermfg=184
  " hi LspInformationLine ctermfg=cyan
  " hi LspHintLine ctermfg=gray

  " hi LspErrorVirtualText ctermfg=red
  " hi LspWarningVirtualText ctermbg=100
  hi! link SignColumn LineNr

  hi! link CursorLine Blank
  hi! link VertSplit NonText
  hi! link SpecialKey NonText
  hi! link TabLineFill NonText
  hi! link TabLineSel StatusLine
  hi! link TabLine StatusLineNC
  " hi! link PreProc Statement
  hi! link MoreMsg Statement
  hi! link Folded StatusLineNC

  hi! link Special Blank
  " hi! link Type Statement
  hi! link Constant Blank

  hi DiffDelete ctermbg=red ctermfg=52
  hi DiffAdd ctermbg=114 ctermfg=22
  hi DiffChange ctermbg=red ctermfg=52
  hi DiffText ctermfg=red ctermbg=52

  hi SpellBad ctermbg=217
  hi SpellCap ctermbg=153
  hi SpellRare ctermbg=153
  hi SpellLocal ctermbg=153


  hi! link diffDeleted DiffDelete
  hi! link diffAdded DiffAdd
  hi! link diffChanged DiffChange

  hi Todo ctermbg=184 cterm=bold
endif
