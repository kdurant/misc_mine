set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="james"

hi Normal	        guifg=#839496           guibg=#002b35   gui=NONE

" highlight groups
hi Cursor           guifg=black             guibg=yellow    gui=NONE
hi ErrorMsg         guifg=white             guibg=red       gui=NONE
hi VertSplit        guifg=gray40            guibg=gray40    gui=NONE
hi Folded           guifg=DarkSlateGray3    guibg=grey30    gui=NONE
hi FoldColumn       guifg=tan               guibg=grey30    gui=NONE
hi IncSearch        guifg=#b0ffff           guibg=#2050d0   gui=NONE
hi LineNr           guifg=burlywood3        guibg=NONE      gui=NONE
hi ModeMsg          guifg=SkyBlue           guibg=NONE      gui=NONE
hi MoreMsg          guifg=SeaGreen          guibg=NONE      gui=NONE
hi NonText          guifg=cyan              guibg=NONE      gui=NONE
hi Question         guifg=springgreen       guibg=NONE      gui=NONE
hi Search           guifg=gray80            guibg=#445599   gui=NONE
hi SpecialKey       guifg=cyan              guibg=NONE      gui=NONE
hi StatusLine       guifg=black             guibg=#c2bfa5   gui=bold
hi StatusLineNC     guifg=grey              guibg=gray40    gui=NONE
hi Title            guifg=indianred         guibg=NONE      gui=NONE
hi Visual           guifg=gray17            guibg=tan1      gui=NONE
hi WarningMsg       guifg=salmon            guibg=NONE      gui=NONE
hi Pmenu            guifg=white             guibg=#445599   gui=NONE
hi PmenuSel         guifg=#445599           guibg=gray      gui=NONE
hi WildMenu         guifg=gray              guibg=gray17    gui=NONE
hi MatchParen	    guifg=cyan              guibg=NONE      gui=bold
hi DiffAdd          guifg=black             guibg=wheat1    gui=NONE
hi DiffChange       guifg=black             guibg=skyblue1  gui=NONE
hi DiffText         guifg=black             guibg=hotpink1  gui=NONE
hi DiffDelete       guifg=black             guibg=gray45    gui=NONE
hi CursorLine       guifg=NONE              guibg=#293739   gui=NONE
hi SignColumn       guifg=#93a1a1           guibg=#073642   gui=NONE

" syntax highlighting groups
hi Comment          guifg=#306060           guibg=NONE      gui=italic
hi Constant         guifg=salmon            guibg=NONE      gui=NONE
hi Identifier       guifg=Skyblue           guibg=NONE      gui=NONE
hi Function         guifg=#82aa17           guibg=NONE      gui=NONE
hi Statement        guifg=#4682B4           guibg=NONE      gui=NONE
hi PreProc          guifg=#4682B4           guibg=NONE      gui=NONE
hi Type             guifg=tan1              guibg=NONE      gui=NONE
hi Special          guifg=aquamarine2       guibg=NONE      gui=NONE
hi Ignore           guifg=grey40            guibg=NONE      gui=NONE
hi Todo             guifg=orangered         guibg=yellow2   gui=NONE
"extra added
hi Macro            guifg=#EE82EE           guibg=NONE      gui=NONE
hi Operator         guifg=PaleGreen3        guibg=NONE      gui=NONE
hi Repeat           guifg=#8B1A1A           guibg=NONE      gui=NONE
hi Label            guifg=lightgoldenrod2   guibg=NONE      gui=NONE
hi String           guifg=salmon            guibg=NONE      gui=italic
hi Number           guifg=#AE81FF           guibg=NONE      gui=NONE
hi Define           guifg=#EE82EE           guibg=NONE      gui=NONE
hi Character        guifg=lightgoldenrod2   guibg=NONE      gui=NONE
hi Structure        guifg=#66D9EF           guibg=NONE      gui=NONE
hi StorageClass     guifg=#FD971F           guibg=NONE      gui=italic
hi Conditional      guifg=#F92672           guibg=NONE      gui=NONE
hi Exception        guifg=red               guibg=NONE      gui=NONE
hi Keyword          guifg=tan1              guibg=NONE      gui=NONE

"solarized background color
hi Solarized        guifg=#073642           guifg=NONE      gui=NONE
hi StateMachine     guifg=#93a1a1           guibg=#073642   gui=NONE

" color terminal definitions
hi SpecialKey       ctermfg=darkgreen
hi NonText          cterm=bold              ctermfg=darkblue
hi Directory        ctermfg=darkcyan
hi ErrorMsg         cterm=bold              ctermfg=7       ctermbg=1
hi IncSearch        cterm=NONE              ctermfg=yellow  ctermbg=green
hi Search           cterm=NONE              ctermfg=grey    ctermbg=blue
hi MoreMsg          ctermfg=darkgreen
hi ModeMsg          cterm=NONE              ctermfg=brown
hi LineNr           ctermfg=3
hi Question         ctermfg=green
hi StatusLine       cterm=bold,reverse
hi StatusLineNC     cterm=reverse
hi VertSplit        cterm=reverse
hi Title            ctermfg=5
hi Visual           cterm=reverse
hi VisualNOS        cterm=bold,underline
hi WarningMsg       ctermfg=1
hi WildMenu         ctermfg=0               ctermbg=3
hi Folded           ctermfg=darkgrey        ctermbg=NONE
hi FoldColumn       ctermfg=darkgrey        ctermbg=NONE
hi DiffAdd          ctermbg=4
hi DiffChange       ctermbg=5
hi DiffDelete       cterm=bold              ctermfg=4       ctermbg=6
hi DiffText         cterm=bold              ctermbg=1
hi Comment          ctermfg=darkcyan
hi Constant         ctermfg=brown
hi Special          ctermfg=5
hi Identifier       ctermfg=6
hi Statement        ctermfg=3
hi PreProc          ctermfg=5
hi Type             ctermfg=2
hi Underlined       cterm=underline         ctermfg=5
hi Ignore           ctermfg=darkgrey
hi Error            cterm=bold              ctermfg=7       ctermbg=1

