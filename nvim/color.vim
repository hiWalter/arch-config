"===
"=== color-scheme -- revise from peakseda
"===

" 256color dark terminal support here
" Comment/Uncomment the following line to disable/enable transparency
hi Normal		ctermfg=252	ctermbg=NONE	cterm=NONE
hi Comment		ctermfg=186	ctermbg=NONE	cterm=NONE
hi Constant		ctermfg=110	ctermbg=NONE	cterm=NONE
hi Number		ctermfg=179	ctermbg=NONE	cterm=NONE
hi Identifier	ctermfg=219	ctermbg=NONE	cterm=NONE
hi Statement	ctermfg=153	ctermbg=NONE	cterm=NONE
hi PreProc		ctermfg=84	ctermbg=NONE	cterm=NONE
hi Type		ctermfg=153	ctermbg=NONE	cterm=NONE
hi Special		ctermfg=179	ctermbg=NONE	cterm=NONE
hi Error		ctermfg=209	ctermbg=NONE	cterm=NONE
hi Todo		ctermfg=88	ctermbg=186	cterm=NONE
hi Search		ctermfg=NONE	ctermbg=88	cterm=NONE
hi Visual		ctermfg=16	ctermbg=153	cterm=NONE
hi Cursor		ctermfg=16	ctermbg=46	cterm=NONE
" NOTE THIS IS IN THE COOL SECTION
hi CursorIM		ctermfg=16	ctermbg=219	cterm=NONE
hi StatusLine	ctermfg=16	ctermbg=153	cterm=NONE
hi LineNr		ctermfg=249	ctermbg=NONE	cterm=NONE
hi Question		ctermfg=16	ctermbg=186	cterm=NONE
hi ModeMsg		ctermfg=fg	ctermbg=18	cterm=NONE
hi VisualNOS	ctermfg=fg	ctermbg=18	cterm=NONE
hi SpecialKey	ctermfg=153	ctermbg=NONE	cterm=NONE
hi NonText		ctermfg=69	ctermbg=233	cterm=NONE
" Comment/Uncomment the following line to disable/enable transparency
hi NonText		ctermfg=69	ctermbg=NONE	cterm=NONE
hi Directory	ctermfg=110	ctermbg=NONE	cterm=NONE
hi ErrorMsg		ctermfg=186	ctermbg=88	cterm=NONE
hi MoreMsg		ctermfg=150	ctermbg=NONE	cterm=NONE
hi Title		ctermfg=219	ctermbg=NONE	cterm=NONE
hi WarningMsg	ctermfg=209	ctermbg=NONE	cterm=NONE
hi WildMenu		ctermfg=16	ctermbg=186	cterm=NONE
hi Folded		ctermfg=NONE	ctermbg=22	cterm=NONE
hi FoldColumn	ctermfg=254	ctermbg=28	cterm=NONE
hi DiffAdd		ctermfg=NONE	ctermbg=18	cterm=NONE
hi DiffChange	ctermfg=NONE	ctermbg=90	cterm=NONE
hi DiffDelete	ctermfg=69	ctermbg=234	cterm=NONE
hi DiffText		ctermfg=16	ctermbg=150	cterm=NONE
hi SignColumn	ctermfg=254	ctermbg=28	cterm=NONE
hi IncSearch	ctermfg=16	ctermbg=252	cterm=NONE
hi StatusLineNC	ctermfg=16	ctermbg=250	cterm=NONE
hi VertSplit	ctermfg=16	ctermbg=250	cterm=NONE
hi Underlined	ctermfg=111	ctermbg=NONE	cterm=underline 
hi Ignore		ctermfg=16	ctermbg=NONE
" NOTE THIS IS IN THE COOL SECTION
if v:version >= 700
  if has('spell')
    " the ctermsp= is not supported in Vim 7 we simply ignored
    if 0
      hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=209
      hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=69
      hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=219
      hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=153
    else
      hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
      hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
      hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
      hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
    endif
  endif
  hi Pmenu  		ctermfg=110	ctermbg=16
  hi PmenuSel		ctermfg=16	ctermbg=252	cterm=NONE
  hi PmenuSbar 		ctermfg=NONE	ctermbg=NONE	cterm=NONE
  hi PmenuThumb		ctermfg=fg	ctermbg=NONE	cterm=NONE
  hi TabLine		ctermfg=fg	ctermbg=NONE	cterm=NONE
  hi TabLineFill	ctermfg=fg	ctermbg=28	cterm=NONE
  hi TabLineSel		ctermfg=fg	ctermbg=NONE	cterm=NONE
  hi CursorColumn	ctermfg=NONE	ctermbg=88	cterm=NONE
  hi CursorLine	ctermfg=NONE	ctermbg=NONE	cterm=underline
  hi MatchParen		ctermfg=NONE	ctermbg=90
  hi TabLine	cterm=underline  
  hi TabLineFill	cterm=underline  
  hi Underlined	cterm=underline  
  hi CursorLine	cterm=underline 
endif

" Links:
"
" COLOR LINKS DEFINE START

hi link		String		Constant
" Character must be different from strings because in many languages
" (especially C, C++) a 'char' variable is scalar while 'string' is pointer,
" mistaken a 'char' for a 'string' will cause disaster!
hi link		Character	Number
hi link		SpecialChar	LineNr
hi link		Tag		Identifier
hi link		cCppOut		LineNr
" The following are not standard hi links, 
" these are used by DrChip
hi link		Warning		MoreMsg
hi link		Notice		Constant
" these are used by Calendar
hi link		CalToday	PreProc
" these are used by TagList
hi link		MyTagListTagName	IncSearch
hi link		MyTagListTagScope	Constant
