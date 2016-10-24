#
BEGIN{
match("the UNIX operating system", /[A-Z]+/)
print RSTART
print RLENGTH
}
