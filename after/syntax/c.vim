"highlight Functions
syntax match cSelfDefine    '\<\([A-Z0-9]\+_\)\+[A-Z0-9]\+\>'
hi link cSelfDefine Macro

syn match cFunction /\<\w\+\%(\s*(\)\@=/
hi link cFunction Function

syntax match cOperator "?\|+\|]\|\[\|(\|)\|{\|}\|,\|-\|;\|\.\|*\|:\|\^\|<\|>\|&\||\|!\|\~\|%\|=\|/\(/\|*\)\@!"
hi link cOperator Operator
 
syntax match cSelfDefine    '\<\([A-Z0-9]\+_\)\+[A-Z0-9]\+\>'
hi link cSelfDefine Macro

syn keyword	cType	int16   int32   Uint16  U8  Uint32  float32 float64	

