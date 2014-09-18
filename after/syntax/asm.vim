"for ti asm
syn match asmDirective		'\.\w\+'
syn match asmCommand		'^\s*\<\u\{2,}\>'

hi link asmDirective    Type
hi link asmIdentifier   Number
hi link asmCond         Conditional
hi link asmCommand      Define

