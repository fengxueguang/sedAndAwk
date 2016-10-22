#
match($0, /:[^:]*:/){
    before=substr($0,1,RSTART+RLENGTH-2)
    after=substr($0,RSTART+RLENGTH)
    print before";"after
    next
    }
    {
    print
}
