if exists("b:current_syntax")
  finish
endif

syn match       cmdWarn         "Warnings: [1-9]\+"
syn match       cmdError        "Errors: [1-9]\+"
syn match       cmdError        "\*\* Error: \*\*"
syn match       cmdError        "\*\* Error: (vlog-\d\+) \*\*"
syn match       cmdError        "\*\* Error (suppressible):"
syn match       uvmInfo         "UVM_\w\+"
syn region	cString		start="UVM_INFO @ 0: reporter" end="--- UVM Report Summary ---"

hi def link cmdWarn             Number
hi def link cmdError            Statement
hi def link uvmInfo             String
hi def link cString             Comment


let b:current_syntax = "modelsim"
