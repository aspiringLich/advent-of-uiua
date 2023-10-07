Lib ← &i "lib.ua"
Input ← use "Input" Lib

Code ← &i $"_/_.ua" ⊃(⊡1)(⊡2)&args
InputRaw ← Input ⊃(parse!⊡1)(parse!⊡2)&args

in ← use "in" Code
a ← use "a" Code
b ← use "b" Code

InputData ← in InputRaw

a InputData
b InputData
