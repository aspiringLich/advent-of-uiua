Socket ← &tcpc "adventofcode.com:443"
Session ← &fras "session.txt"

&tcpswt 1 Socket
&tcpsrt 1 Socket

# takes in a index, array, default value
IdxDefault ← (⊙;⊡)(□;;)>,⧻,

# detects if a flag is present in &args
ArgFlag ← ∊∶&args□
# returns a string flag in &args (or a default)
ArgStr ← !IdxDefault+1⊗∶&args□∶&args
# returns an int flag in &args (or a default)
ArgInt ← parse!IdxDefault&args+1⊗∶&args□⊙$"_"

# try and read a file, on failiure, error
TryFras ← (|1 ⍣&fras(0 0 ⍤ $"Tried to read from _, try creating that file and put stuff in it!";))

# splits a str by newlines
# 
# if there are 2 newlines in a row, it will split those too
SplitLines ← ⊜□⬚0+×2⌕0_0.≠, @\n

# fetch the official input
InputFetch ← (|2
    ⊂∶$"cookie: session=_" Session $"GET /_/day/_/input HTTP/1.0\r\n"
    &httpsw ∶ Socket
    SplitLines
    ↘10
)

# get the input for advent of code
Input ← (|2
    ArgFlag "--test"
    ?(SplitLines TryFras "test.txt" ;;)(InputFetch)
)

Input_
