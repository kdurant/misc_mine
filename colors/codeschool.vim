" Vim color file
" Converted from my Textmate Code School theme using Coloration
" http://astonj.com

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "codeschool"

"hi Normal           guifg=#f0f0f0   guibg=#252c31   gui=NONE
hi Normal           guifg=#D0D0D0   guibg=#252c31   gui=NONE

hi ErrorMsg         guifg=NONE      guibg=NONE      gui=NONE
hi Cursor           guifg=#182227   guibg=#9ea7a6   gui=NONE
hi VertSplit        guifg=#252c31   guibg=#252c31   gui=NONE
hi Folded           guifg=#9a9a9a   guibg=#182227   gui=NONE
hi FoldColumn       guifg=tan               guibg=grey30    gui=NONE    "
hi IncSearch        guifg=#182227   guibg=#8bb664   gui=NONE
hi LineNr           guifg=#84898c   guibg=#2a343a   gui=NONE
hi ModeMsg          guifg=SkyBlue           guibg=NONE      gui=NONE    "
hi MoreMsg          guifg=SeaGreen          guibg=NONE      gui=NONE    "
hi NonText          guifg=#414e58   guibg=#232c31   gui=NONE
hi Question         guifg=springgreen       guibg=NONE      gui=NONE    "
hi Search           guifg=gray80            guibg=#445599   gui=NONE    "
hi SpecialKey       guifg=#414e58   guibg=#252c31   gui=NONE
hi StatusLine       guifg=#f0f0f0   guibg=#575e61   gui=bold
hi StatusLineNC     guifg=#f0f0f0   guibg=#575e61   gui=NONE
hi Title            guifg=#f0f0f0   guibg=NONE      gui=bold
hi Visual           guifg=NONE      guibg=#3f4b52   gui=NONE
hi WarningMsg       guifg=NONE      guibg=NONE      gui=NONE
hi Pmenu            guifg=#bcdbff   guibg=NONE      gui=NONE
hi PmenuSel         guifg=NONE      guibg=#3f4b52   gui=NONE
hi WildMenu         guifg=gray              guibg=gray17    gui=NONE    "
hi MatchParen       guifg=#dda790   guibg=NONE      gui=underline
hi DiffAdd          guifg=#f0f0f0   guibg=#43820d   gui=bold
hi DiffDelete       guifg=#880708   guibg=NONE      gui=NONE
hi DiffChange       guifg=#f0f0f0   guibg=#1c3657   gui=NONE
hi DiffText         guifg=#f0f0f0   guibg=#204a87   gui=bold
hi CursorLine       guifg=NONE      guibg=#2e373b   gui=NONE
hi SignColumn       guifg=#93a1a1           guibg=#073642   gui=NONE    "
hi CursorColumn     guifg=NONE      guibg=#2e373b   gui=NONE
hi ColorColumn      guifg=NONE      guibg=#2e373b   gui=NONE
hi Directory        guifg=#3c98d9   guibg=NONE      gui=NONE

hi Comment          guifg=#9a9a9a   guibg=NONE      gui=NONE
hi Constant         guifg=#3c98d9   guibg=NONE      gui=NONE
hi Identifier       guifg=#99cf50   guibg=NONE      gui=NONE
hi Function         guifg=#bcdbff   guibg=NONE      gui=NONE
hi Statement        guifg=#dda790   guibg=NONE      gui=NONE
hi PreProc          guifg=#dda790   guibg=NONE      gui=NONE
hi Type             guifg=#b5d8f6   guibg=NONE      gui=NONE
hi Special          guifg=#f0f0f0   guibg=NONE      gui=NONE
hi Ignore           guifg=grey40            guibg=NONE      gui=NONE    
hi Todo             guifg=#9a9a9a   guibg=NONE      gui=inverse,bold,italic

hi Macro            guifg=#EE82EE           guibg=NONE      gui=NONE    
hi Operator         guifg=#dda790   guibg=NONE      gui=NONE
hi Repeat           guifg=#8B1A1A           guibg=NONE      gui=NONE    
hi Label            guifg=#8bb664   guibg=NONE      gui=NONE
hi String           guifg=#8bb664   guibg=NONE      gui=NONE
hi Number           guifg=#3c98d9   guibg=NONE      gui=NONE
hi Define           guifg=#dda790   guibg=NONE      gui=NONE
hi Character        guifg=#3c98d9   guibg=NONE      gui=NONE
hi Structure        guifg=#66D9EF           guibg=NONE      gui=NONE    
hi StorageClass     guifg=#99cf50   guibg=NONE      gui=NONE
hi Conditional      guifg=#dda790   guibg=NONE      gui=NONE
hi Exception        guifg=red               guibg=NONE      gui=NONE    
hi Keyword          guifg=#dda790   guibg=NONE      gui=NONE

hi Boolean          guifg=#3c98d9   guibg=NONE      gui=NONE
hi Float            guifg=#3c98d9   guibg=NONE      gui=NONE
hi Tag              guifg=#bcdbff   guibg=NONE      gui=NONE
hi Underlined       guifg=NONE      guibg=NONE      gui=underline





"hi ErrorMsg         ctermfg=NONE    ctermbg=NONE    cterm=NONE
"hi Cursor           ctermfg=16      ctermbg=145     cterm=NONE
"hi VertSplit        ctermfg=59      ctermbg=59      cterm=NONE
"hi Folded           ctermfg=247     ctermbg=16      cterm=NONE
"hi FoldColumn
"hi IncSearch        ctermfg=16      ctermbg=107     cterm=NONE
"hi LineNr           ctermfg=102     ctermbg=23      cterm=NONE
"hi ModeMsg
"hi MoreMsg
"hi NonText          ctermfg=59      ctermbg=17      cterm=NONE
"hi Question
"hi Search           ctermfg=NONE    ctermbg=NONE    cterm=underline
"hi SpecialKey       ctermfg=59      ctermbg=23      cterm=NONE
"hi StatusLine       ctermfg=231     ctermbg=59      cterm=bold
"hi StatusLineNC     ctermfg=231     ctermbg=59      cterm=NONE
"hi Title            ctermfg=231     ctermbg=NONE    cterm=bold
"hi Visual           ctermfg=NONE    ctermbg=59      cterm=NONE
"hi WarningMsg       ctermfg=NONE    ctermbg=NONE    cterm=NONE
"hi Pmenu            ctermfg=153     ctermbg=NONE    cterm=NONE
"hi PmenuSel         ctermfg=NONE    ctermbg=59      cterm=NONE
"hi WildMenu
"hi MatchParen       ctermfg=180     ctermbg=NONE    cterm=underline
"hi DiffAdd          ctermfg=231     ctermbg=64      cterm=bold
"hi DiffDelete       ctermfg=88      ctermbg=NONE    cterm=NONE
"hi DiffChange       ctermfg=231     ctermbg=23      cterm=NONE
"hi DiffText         ctermfg=231     ctermbg=24      cterm=bold
"hi CursorLine       ctermfg=NONE    ctermbg=23      cterm=NONE
"hi SignColumn
"hi CursorColumn     ctermfg=NONE    ctermbg=23      cterm=NONE
"hi ColorColumn      ctermfg=NONE    ctermbg=23      cterm=NONE
"hi Directory        ctermfg=68      ctermbg=NONE    cterm=NONE
"
"hi Comment          ctermfg=247     ctermbg=NONE    cterm=NONE
"hi Constant         ctermfg=68      ctermbg=NONE    cterm=NONE
"hi Identifier       ctermfg=113     ctermbg=NONE    cterm=NONE
"hi Function         ctermfg=153     ctermbg=NONE    cterm=NONE
"hi Statement        ctermfg=180     ctermbg=NONE    cterm=NONE
"hi PreProc          ctermfg=180     ctermbg=NONE    cterm=NONE
"hi Type             ctermfg=153     ctermbg=NONE    cterm=NONE
"hi Special          ctermfg=231     ctermbg=NONE    cterm=NONE
"hi Ignore
"hi Todo             ctermfg=247     ctermbg=NONE    cterm=inverse,bold
"
"hi Macro
"hi Operator         ctermfg=180     ctermbg=NONE    cterm=NONE
"hi Repeat
"hi Label            ctermfg=107     ctermbg=NONE    cterm=NONE
"hi String           ctermfg=107     ctermbg=NONE    cterm=NONE
"hi Number           ctermfg=68      ctermbg=NONE    cterm=NONE
"hi Define           ctermfg=180     ctermbg=NONE    cterm=NONE
"hi Character        ctermfg=68      ctermbg=NONE    cterm=NONE
"hi Structure
"hi StorageClass     ctermfg=113     ctermbg=NONE    cterm=NONE
"hi Conditional      ctermfg=180     ctermbg=NONE    cterm=NONE
"hi Exception
"hi Keyword          ctermfg=180     ctermbg=NONE    cterm=NONE
"
"hi Boolean          ctermfg=68      ctermbg=NONE    cterm=NONE
"hi Float            ctermfg=68      ctermbg=NONE    cterm=NONE
"hi Tag              ctermfg=153     ctermbg=NONE    cterm=NONE
"hi Underlined       ctermfg=NONE    ctermbg=NONE    cterm=underline
