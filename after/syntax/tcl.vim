syntax keyword modelsimAction      add vsim quit virtual run
syntax keyword modelsimKeyword     wave function type
syntax match OperatorChars '/\|{\|}\|(\|)\(/\|*\)\@!'
syntax match quartusPin       'PIN_\d\+'

syntax match modelsimOption     '-\w\+'
syntax match modelsimTime       '\d\+[num]s'
syntax match modelsimTime       '\<[num]s\>'

hi default link modelsimOption  Type
hi default link OperatorChars   Identifier
hi default link modelsimAction  Statement
hi default link modelsimKeyword PreProc
hi default link modelsimTime    StateMachine
hi default link quartusPin      Function

syntax match modelsimTest   '-color\s\+\(\S\+\)'
hi default link modelsimTest    StateMachine
