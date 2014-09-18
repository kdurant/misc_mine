"highlight Functions
syn match cFunction /\<\w\+\%(\s*(\)\@=/
hi link matlabFunction Function

syntax match matlabOperator "?\|+\|-\|;\|\.\|*\|:\|\^\|<\|>\|&\||\|!\|\~\|=\|/\(/\|*\)\@!"
hi link matlabOperator Operator

