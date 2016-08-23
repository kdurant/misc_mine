
syntax  match       verilogIgnore       '\<DELAY\>'
syntax  match       verilogAddition     '\c\<clk_\w\+'
syntax  match       verilogState        '\<s\(\u\w\+\)\+\>'
syntax  keyword     verilogType         reg wire integer real
syntax  keyword     verilogPortIn       input
syntax  keyword     verilogPortInOut    inout
syntax  keyword     verilogPortOut      output
syntax  keyword     verilogFunction     function task endfunction endtask
"syntax keyword verilogState     MainState Nextstate Currentstate

syntax  match       verilogOperator       "#\(/\|*\)\@!"

hi  link    verilogIgnore       Ignore
hi  link    verilogAddition     Macro
hi  link    verilogType         Type
hi  link    verilogPortIn       Function
hi  link    verilogPortInOut    Exception
hi  link    verilogPortOut      Identifier
hi  link    verilogState        StateMachine
hi  link    verilogOperator     Ignore

hi  link    verilogOperator	    Operator
hi  link    verilogWire         Wire
hi  link    verilogReg          Reg
hi  link    verilogFunction     Identifier

