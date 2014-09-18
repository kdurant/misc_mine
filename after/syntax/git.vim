"       "highlight Functions
"       "syn match cFunction /\<\w\+\%(\s*(\)\@=/
"       "hi link cFunction Function
"
"       "syntax match OperatorChars "|\|*\|/\|\\\|/\(/\|*\)\@!"
"       "hi link OperatorChars Identifier
"
"       syntax match OperatorChar1 "*\(/\|*\)\@!"
"       hi link OperatorChar1 Identifier
"
"       syntax match OperatorChar2 "|\(/\|*\)\@!"
"       hi link OperatorChar2 Function
"
"       syntax match OperatorChar3 "/\(/\|*\)\@!"
"       hi link OperatorChar3 Special
"
"       syntax match OperatorChar4 "\\\(/\|*\)\@!"
"       hi link OperatorChar4 Identifier
"
"       syn keyword	gitCommand	git diff commit branch push pull checkout clone
"       hi link gitCommand Type
"
"       syn match gitBranch     /'\w\+'/
"       hi link gitBranch Macro
"
"       syn match gitPrompt     /"\w\+\s\+"/
"       hi link gitPrompt   Comment

syn keyword  gitKeyword warning master diff git commit branch push pull checkout clone branch contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link diffRemoved     Comment
hi link diffAdded       Function

syn match gitBranch     /'\w\+'/ contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link gitBranch Macro
syntax match OperatorChar2 "|\(/\|*\)\@!" contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link OperatorChar2 Function

syntax match OperatorChar3 "/\(/\|*\)\@!" contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link OperatorChar3 Repeat

syntax match OperatorChar4 "\\\(/\|*\)\@!" contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link OperatorChar4 Identifier

syn region	gitCommandPrompt		start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link gitCommandPrompt   Function

syntax match gitModifyLine '#\s\+modified:\s\+\S\+' contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link gitModifyLine String

syntax match gitNewFileLine '#\s\+new file:\s\+\S\+' contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link gitNewFileLine Conditional

syn match gitCurrentBranch     /^\*\s\{1}\w\+/ contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link gitCurrentBranch Operator

syn match   gitNumber "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>" contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link gitNumber   Number

syn match   gitSHA1 '[a-z0-9]\{40}' contained containedin=gitHead nextgroup=gitHash,gitType skipwhite
hi link gitSHA1     Number
