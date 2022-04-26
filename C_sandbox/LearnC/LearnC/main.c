//
//  main.c
//  LearnC
//
//  Created by Sam Pomerantz on 4/12/22.
//


#include <stdio.h>
#include <stdlib.h>

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
    
    struct Person p2 = {.name = "test", .age = 20, .location = "Boston"};
    printf("%d\n", p2.age);
    
    struct Person *p3 = &normalValues[0];
    printf("%d\n", p3->age);
    
    struct Person p4 = normalValues[0];
    printf("%d\n", p4.age);
    
    p3->age = 30;
    
    printf("%d\n", p4.age);
    
    struct Person p5 = normalValues[0];
    printf("%d\n", p5.age);
    
    
    
    int size = 3;
    struct Person *peopleArray = (struct Person*)malloc(size*sizeof(struct Person));
    peopleArray[0] = p1;
    peopleArray[1] = p2;
    peopleArray[2] = *p3;
    
    
    return 0;
}
