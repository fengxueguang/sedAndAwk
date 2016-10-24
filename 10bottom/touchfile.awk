#!

BEGIN {
    if (system("touch touch.txt")!=0) {
        print "command failed"
    } else {
        print "command ok"
    }
}
