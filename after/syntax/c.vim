syntax match cUserDefine    '\<\([A-Z0-9]\+_\)\+[A-Z0-9]\+\>'
hi link cUserDefine Macro

"syn match cFunction /\<\w\+\%(\s*(\)\@=/
"hi link cFunction Function

syntax match cOperator "?\|+\|]\|\[\|(\|)\|{\|}\|,\|-\|;\|\.\|*\|:\|\^\|<\|>\|&\||\|!\|\~\|%\|=\|/\(/\|*\)\@!"
hi link cOperator Operator

syntax match cUserDefine    '\<\([A-Z0-9]\+_\)\+[A-Z0-9]\+\>'
hi link cUserDefine Macro

syn match cUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1 contains=cType,cDelimiter,cDefine
syn match cUserFunctionPointer "(\s*\*\s*\h\w*\s*)\(\s\|\n\)*(" contains=cDelimiter,cOperator

hi link cUserFunction Function
hi link cUserFunctionPointer Function

syn keyword	cTodo		contained note Note NOTE Notes
