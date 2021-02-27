" Vim syntax file
" Language: Antimony

if exists("b:current_syntax")
  finish
endif

syn case match
syn keyword antimonyKeyword let fn struct new
syn keyword antimonyBranch for return break continue while
syn keyword antimonyConditional if else match
syn keyword antimonyBuiltin len rev assert
syn keyword antimonyOperator is as in
" TODO: highlight size correctly both as keyword and type
syn match antimonyPreProc "^import .*\n"
" syn match antimonyPreProc "@[a-z]*"
syn match antimonyOperator "\.\.\." "\.\."

syn region antimonyString start=+\z(["']\)+ end=+\z1+ skip=+\\\\\|\\\z1+

"adapted from c.vim
"integer number, or floating point number without a dot and with "f".
syn match	antimonyNumbers	display transparent "\<\d" contains=antimonyNumber,antimonyOctal,antimonyFloat
syn match	antimonyNumber		display contained "\d\+\(e[-+]\?\d\+\)\?\([ziu]\d*\)\?"
"hex number
syn match	antimonyNumber		display contained "0x\x\+\([ziu]\d*\)\?"
"octal number
syn match	antimonyOctal		display contained "0o\o\+\([ziu]\d*\)\?"
syn match	antimonyFloat		display contained "\d\+\(e[-+]\?\d\+\)\?\(f32\|f64\)"
"floating point number, with dot, optional exponent
syn match	antimonyFloat		display contained "\d\+\.\d\+\(e[-+]\?\d\+\)\?\(f32\|f64\)\?"

syn keyword antimonyTodo contained TODO FIXME XXX
syn region antimonyComment start="//" end="$" contains=antimonyTodo,@Spell

syn keyword antimonyType u8 u16 u32 u64 i8 i16 i32 i64
syn keyword antimonyType uint int
syn keyword antimonyType uintptr
syn keyword antimonyType size
syn keyword antimonyType f32 f64
syn keyword antimonyType bool
syn keyword antimonyType char str
syn keyword antimonyType void
syn keyword antimonyType struct union
syn keyword antimonyType enum
syn keyword antimonyType nullable
syn keyword antimonyType rune
syn keyword antimonyNull null
syn keyword antimonyBoolean true false

hi def link antimonyBoolean Boolean
hi def link antimonyComment Comment
hi def link antimonyConditional Conditional
hi def link antimonyFloat Number
hi def link antimonyKeyword Keyword
hi def link antimonyNumber Number
hi def link antimonyNull Constant
hi def link antimonyOctal Number
hi def link antimonyOperator Operator
hi def link antimonyPreProc PreProc
hi def link antimonyBranch Repeat
hi def link antimonyString String
hi def link antimonyTodo Todo
hi def link antimonyType Type
hi def link antimonyBuiltin Function
