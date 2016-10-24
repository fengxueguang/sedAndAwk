#

BEGIN {
    upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    lower="abcdefghijklmnopqrstuvwxyz"
}

{
    while(match($0, /[A-Z]+/)) {
        for (i=RSTART;i < (RSTART + RLENGTH); i++) {
            letter=substr($0, i, 1)
            letterIndex=index(upper, letter)
            gsub(letter, substr(lower,letterIndex,1))
        }
    }
    print $0
}

