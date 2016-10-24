#!
#awk -f whoami.awk /etc/passwd
BEGIN{
    "who am i" | getline
    name = $1
    FS = ":"
}
name~ $1{
    print $5
}

