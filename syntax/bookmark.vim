syntax match bookmarkOperatorChars ":\|/\(/\|*\)\@!"
hi link bookmarkOperatorChars Identifier

syntax match bookmarkName   '^\w\+.\w\+'
hi link bookmarkName Type

syntax match bookmarkPath   '\w\+.\w\+$'
"syntax match bookmarkPath   '\u.*\w\+.\w\+$' contains=OperatorChars
hi link bookmarkPath Function

syntax match titleName   '\c\<bookmarkname\>'
hi link titleName   Special

syntax match titlePath   '\c\<bookmarkpath\>'
hi link titlePath Macro
