//
//  main.c
//  LearnC
//
//  Created by Sam Pomerantz on 4/12/22.
//

#include <stdio.h>


long XARRAY[1024];

long sumit(void){
    long i = 0;
    long sum = 0;
    
    for(i=0; i<10; i++){
        sum += XARRAY[i];
    }
    return sum;
}


int main() {
    long test = sumit();
    XARRAY[0] = 1;
    printf("%ld", test);
    printf("%ld", XARRAY[0]);
    printf("\n\nHello, World!\n\n");
    return 0;
}

