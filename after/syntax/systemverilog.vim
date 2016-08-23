syntax  keyword     systemverilogType         reg wire integer real
syntax  keyword     systemverilogPortIn       input
syntax  keyword     systemverilogPortInOut    inout
syntax  keyword     systemverilogPortOut      output
syntax  keyword     systemverilogFunction     function task endfunction endtask
syntax  keyword     systemverilogClass     class endclass struct enum union join join_any join_none fork

syntax  match       systemverilogOperator       "#\(/\|*\)\@!"

hi  link    systemverilogClass        Question
hi  link    systemverilogAddition     Macro
hi  link    systemverilogType         Type
hi  link    systemverilogPortIn       Function
hi  link    systemverilogPortInOut    Exception
hi  link    systemverilogPortOut      Identifier
hi  link    systemverilogState        StateMachine
hi  link    systemverilogOperator     Ignore

hi  link    systemverilogOperator	  Operator
hi  link    systemverilogFunction     Identifier

