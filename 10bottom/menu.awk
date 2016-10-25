#!

BEGIN{
    FS=":"
    if ((getline < CMDFILE) > 0) {
        title= $1
        } else {
    exit 1
    }

    while((getline < CMDFILE) > 0){
        ++sizeOfArray
        menu[sizeOfArray]=$1
        command[sizeOfArray]=$2
       }
       display_menu()
    }
    {
        if($1>0 && $1<=sizeOfArray){
            printf("Executing ...%s\n", command[$1])
            system(command[$1])
            printf("<Press RETURN to continue>")
            getline
            }else {
            exit
        }
        display_menu()
        }



function display_menu(){
    system("clear")
    print "\t" title
    for(i=1;i<=sizeOfArray;++i){
            printf "\t%d.%s\n",i,menu[i]
        }
        printf "\t%d.Exit\n",i
        printf("Choose one: ")
    }
