#

function insert(STRING, POS, INS,    before_tmp) {
    before_tmp = substr(STRING, 1, POS)
    after_tmp = substr(STRING, POS+1)
    return before_tmp INS after_tmp    
}

BEGIN {
    str="It collects the data every 10 minutes and generate its report daily. "
    print insert(str, 11, " insert")
    print "The value of str is:", str
    print "The value of STRING is:",STRING
    print "The value of before_tmp is:",before_tmp
    print "The value of after_tmp is:",after_tmp
}
