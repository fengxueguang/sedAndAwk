#!

BEGIN{
    while("who"|getline){
        who_out[++i] = $0
    }

    for (key in who_out){
        print who_out[key]
    }
}
