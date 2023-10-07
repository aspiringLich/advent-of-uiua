Lib ← &i "lib.ua"
Input ← use "Input" Lib

Code ← &i $"_/_.ua" ⊃(⊡1)(⊡2)&args
InputRaw ← Input ⊃(parse!⊡1)(parse!⊡2)&args

in ← !⍣(use "in" Code)((∘);) InputRaw
a ← use "a" Code
b ← use "b" Code

a in
b in
