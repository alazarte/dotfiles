" Vim color file
" Maintainer:	The Vim Project <https://github.com/vim/vim>
" Last Change:	2023 Aug 10
" Former Maintainer:	Bram Moolenaar <Bram@vim.org>

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

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
  hi NonText cterm=NONE ctermfg=238 ctermbg=NONE
  hi StatusLine cterm=bold ctermfg=240 ctermbg=250
  hi StatusLineNC cterm=NONE ctermfg=245 ctermbg=250
  hi Statement cterm=NONE ctermfg=22 ctermbg=NONE
  hi Comment cterm=NONE ctermfg=243
  hi Identifier cterm=NONE ctermfg=blue ctermbg=NONE
  hi Folded cterm=NONE ctermfg=NONE ctermbg=235
  hi Visual cterm=NONE ctermfg=black ctermbg=152
  hi MatchParen cterm=NONE ctermfg=black ctermbg=gray
  hi MatchParen ctermfg=245 ctermbg=189

  hi Type ctermfg=18
  hi Directory ctermfg=18
  hi PreProc ctermfg=52
  hi Function ctermfg=22

  hi! link CursorLine Blank
  hi! link VertSplit NonText
  hi! link SpecialKey NonText
  hi! link TabLineFill NonText
  hi! link TabLineSel StatusLine
  hi! link TabLine StatusLineNC
  " hi! link PreProc Statement
  hi! link MoreMsg Statement

  hi! link CursorLineNr StatusLine
  hi! link LineNr StatusLineNC

  hi! link Special Blank
  " hi! link Type Statement
  hi! link Constant Blank

  hi DiffDelete ctermbg=red ctermfg=52
  hi DiffAdd ctermbg=green ctermfg=22
  hi DiffChange ctermbg=red ctermfg=52
  hi DiffText ctermfg=red ctermbg=52

  hi Todo ctermbg=184 cterm=bold
endif
