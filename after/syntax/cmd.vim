syn region	cmdComment	start="/\*" end="\*/"
syn region	cmdCommentL	start="//" skip="\\$" end="$"

syntax keyword cmdDirective MEMORY SECTIONS PAGE

syntax match cmdSecton '\.\l\+'

syntax match cmdNumber '0x\w\{6}'
syntax match cmdNumber '\<\d\+\>'

syntax match cmdOperate  '[{}:=>]'
syntax keyword cmdMark    origin  length

hi link cmdComment      Comment
hi link cmdDirective    Macro
hi link cmdSecton       Type
hi link cmdNumber       Number
hi link cmdOperate      Operator
hi link cmdMark         Conditional
