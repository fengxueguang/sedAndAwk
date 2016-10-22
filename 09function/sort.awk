#

function sort(ARRAY, ELEMENTS, temp, i, j) {
    for (i=2;i<=ELEMENTS;i++){
        for(j=i;(j-1)in ARRAY&&ARRAY[j-1]>ARRAY[j];--j){
            temp=ARRAY[j-1]
            ARRAY[j-1]=ARRAY[j]
            ARRAY[j]=temp
        }
    }
    return
}

BEGIN{
    array[1] = 17
    array[2] =6
    array[3] =7
    sort(array, 3)
    for(i=1;i<=3;i++){
        print i":"array[i]
    }
}
