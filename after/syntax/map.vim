
"syntax match mapHead    'PLACEMENT SUMMARY'
"syntax match mapHead    ''
"hi link mapHead Macro

syn keyword  mapKeyword Gb Wk Lc
hi link mapKeyword Keyword

syn keyword  mapSegment intvec rodata text data bss
hi link mapSegment Define

syn keyword  mapHead RUNTIME MODEL ATTRIBUTES PLACEMENT SUMMARY INIT TABLE MODULE SUMMARY ENTRY LIST
hi link mapHead String

syn keyword  mapAddr A1 P1 P2
hi link mapAddr  Statement

syn keyword  mapCode Code
hi link mapCode Function

syn keyword  mapData Data
hi link mapData Number
