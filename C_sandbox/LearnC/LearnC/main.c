//
//  main.c
//  LearnC
//
//  Created by Sam Pomerantz on 4/12/22.
//


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Person{
    char name[10];
    int age;
    char* location;
};

struct Person normalValues[] = {
    [0] = {.name = "hi", .age = 25, .location = "local"}
};


int main(){
    struct Person p1;
    p1.age = 15;
    
    //Person defined on the spot
    struct Person p2 = {.name = "test", .age = 20, .location = "Boston"};
    printf("%d\n", p2.age);
    
    //Person defined as a pointer to NormalValues
    struct Person *p3 = &normalValues[0];
    strcpy(p3->name, "hello!");
    p3->location = "NYC";
    
    printf("%d\n", p3->age);
    
    //Person defined directly from NormalValues?
    struct Person p4 = normalValues[0];
    struct Person p6 = normalValues[1]; //how is this possible
    printf("%d\n", p4.age);
    printf("%d\n", p6.age);
    
    p3->age = 30;
    
    printf("%d\n", p4.age);
    
    //Person defined directly from NormalValues *after* name change
    struct Person p5 = normalValues[0];
    printf("%d\n", p5.age);
    
    
    //Array of Person, called People Array
    int size = 3;
    struct Person *peopleArray = (struct Person*)malloc(size*sizeof(struct Person));
    peopleArray[0] = p1;
    peopleArray[1] = p2;
    peopleArray[2] = *p3;
    
    
    return 0;
}
