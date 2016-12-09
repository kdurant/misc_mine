syntax keyword modelsimKeyword      wave function type add vsim quit virtual run vlog define
syntax match modelsimOption         '-\w\+'
syntax match modelsimTime           '\d\+[num]s'
syntax match modelsimDefine         '\zs\u\+\(_\u\+\)\{0,}_SIM\ze'
syntax match modelsimFile           '\zs[A-Za-z_]\+\.s\{-}v'
syntax match modelsimFile           '\*\.s\{-}v'

syntax match OperatorChars          '/\|{\|}\|+\|(\|)\(/\|*\)\@!'
syntax match quartusPin             'PIN_\d\+'

hi default link modelsimKeyword     PreProc
hi default link modelsimOption      Type
hi default link OperatorChars       Identifier
hi default link modelsimTime        StateMachine
hi default link modelsimDefine      Function
hi default link modelsimFile        WildMenu
hi default link quartusPin          Function

syntax match modelsimTest   '-color\s\+\(\S\+\)'
hi default link modelsimTest    StateMachine
