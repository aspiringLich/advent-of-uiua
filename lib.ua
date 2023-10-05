socket ← &tcpc "adventofcode.com:443"
session ← &fras "session.txt"

&tcpswt 1 socket
&tcpsrt 1 socket

# takes in a index, array, default value
idxdefault ← (→;⊡)(□;;)>,⧻,

# detects if a flag is present in &args
argflag ← 0 1 ≥⧻&args⊗∶&args□
# returns a string flag in &args (or a default)
argstr ← !idxdefault+1⊗∶&args□∶&args
# returns an int flag in &args (or a default)
argint ← parse!idxdefault∶&args+1⊗∶&args□→$"_"

# splits a str by newlines
splitlines ← ⊜□⍛0+×2⌕0_0.≠, @\n

# fetch the official input
inputfetch ← (|2 
    ⊂∶$"cookie: session=_" session $"GET /_/day/_/input HTTP/1.0\r\n"
    &httpsw ∶ socket
    splitlines
    ↘10
)

# get the input for advent of code
input ← (
    &fras "test.txt"
    ⊟(inputfetch;)(→;→;)
    !⊡=0⧻.
)

input_
