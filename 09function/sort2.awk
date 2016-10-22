#
BEGIN{
    array[1] = 17
    array[2] =6
    array[3] =7
    sort(array, 3)
    for(i=1;i<=3;i++){
        print i":"array[i]
    }
}
