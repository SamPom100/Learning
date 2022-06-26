//
//  test.c
//  LearnC
//
//  Created by Sam Pomerantz on 5/7/22.
//

#include <stdio.h>

#define L 80
struct N{
    char s[L]; //char array of length 80
    long long v;  //long v
    struct N *p;  //pointer to another Struct N, called p
};

void func(struct N *h, long long x, char *y){
    int i;
    while(h != 0){ //h is the address of the input struct
        if(h->v == x){ //input struct's V value == input x
            for(i=0; i<L; i++){ //loop from 0 to 80
                y[i] = h->s[i]; //set the input char array y, to every value from input struct h's internal array
            }
        }
        h = h->p;  //go to next struct, (prob a linkedList)
    }
}
