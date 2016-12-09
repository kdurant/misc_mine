syntax keyword modelsimAction      add vsim quit virtual run vlog
syntax keyword modelsimKeyword     wave function type
syntax keyword modelsimDefine     define
syntax match OperatorChars '/\|{\|}\|(\|)\(/\|*\)\@!'
syntax match quartusPin       'PIN_\d\+'
syntax match tclDefine       '+\u\+\(_\u\+\)\{1,}'

syntax match modelsimOption     '-\w\+'
syntax match modelsimTime       '\d\+[num]s'
syntax match modelsimTime       '\<[num]s\>'

hi default link modelsimOption  Type
hi default link OperatorChars   Identifier
hi default link modelsimAction  Statement
hi default link modelsimKeyword PreProc
hi default link modelsimDefine  Function
hi default link modelsimTime    StateMachine
hi default link quartusPin      Function
hi default link tclDefine       Boolean

syntax match modelsimTest   '-color\s\+\(\S\+\)'
hi default link modelsimTest    StateMachine
