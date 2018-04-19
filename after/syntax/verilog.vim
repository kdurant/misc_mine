syntax  match       verilogIgnore       '\<DELAY\>'
syntax  keyword     verilogAddition     always localparam parameter
syntax  keyword     verilogState        cs ns
"syntax  keyword     verilogType         
syntax  keyword     verilogPortIn       input
syntax  keyword     verilogPortInOut    inout
syntax  keyword     verilogPortOut      output
syntax  match       verilogOperator       "#\(/\|*\)\@!"

hi  link    verilogIgnore       Ignore
hi  link    verilogAddition     Macro
hi  link    verilogType         Type
hi  link    verilogPortIn       Function
hi  link    verilogPortInOut    Exception
hi  link    verilogPortOut      Identifier
hi  link    verilogState        Structure
hi  link    verilogOperator     Ignore

hi  link    verilogOperator	    Operator


""""""""""""""""""""""""""""""""""""""
"syn keyword verilogStatement   always and assign automatic buf
"syn keyword verilogStatement   defparam 
"syn keyword verilogStatement   endfunction endgenerate endmodule
"syn keyword verilogStatement   endprimitive endspecify endtable endtask
"syn keyword verilogStatement   event force function
"syn keyword verilogStatement   generate genvar
"syn keyword verilogStatement   include initial
"syn keyword verilogStatement   
"syn keyword verilogStatement   module negedge
"syn keyword verilogStatement   posedge 
"syn keyword verilogStatement   reg 
"syn keyword verilogStatement   specify specparam 
"syn keyword verilogStatement   task 
"syn keyword verilogStatement   wait
"syn keyword verilogStatement   wire
"syn keyword verilogLabel       begin end fork join
"syn keyword verilogConditional if else case casex casez default endcase
"syn keyword verilogRepeat      forever repeat while for
