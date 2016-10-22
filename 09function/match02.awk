#

match($0, /in[^ ]*/){
    print substr($0, RSTART, RLENGTH)
    }
