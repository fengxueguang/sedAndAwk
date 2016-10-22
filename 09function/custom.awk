#

function insert(STRING, POS, INS){
    before_tmp = substr(STRING, 1, POS)
    after_tmp = substr(STRING, POS+1)
    return before_tmp INS after_tmp    
}

BEGIN {
    print insert("It collects the data every 10 minutes and generate its report daily. ",11, " insert")
}
