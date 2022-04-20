//
//  learningC.c
//  LearnC
//
//  Created by Sam Pomerantz on 4/20/22.
//  https://www.learn-c.org/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void function_name (void){ //the void in the param is optional
    printf("\nFunction call\n\n");
    
    float foo;
    int bar = 1;
    foo = 2.5;
    
    printf("%f",foo+bar);
    
    return;
}

typedef struct {
    char * name;
    int age;
} person;


int main() {
  printf("Goodbye, World!\n");
    function_name();
    
    printf("\n\n");
    

    int numbers[10];
    numbers[0] = 10;
    numbers[1] = 20;
    
    printf("\n\nThe second number in the array is %d", numbers[1]);
    
    if (numbers[0] > numbers[1]){
        
    }
    else{
        
    }
    
    char name2[] = "John Smith";
    
    char * name = "John Smith";
    int age = 27;
    
    printf("%d\n",strlen(name));

    /* prints out 'John Smith is 27 years old.' */
    printf("%s is %d years old.\n", name, age);
    
    
    int i;
    for (i = 0; i < 10; i++) {
        printf("%d\n", i);
    }
    
    
    /* define a local variable a */
    int a = 1;

    /* define a pointer variable, and point it to a using the & operator */
    int * pointer_to_a = &a;

    printf("The value a is %d\n", a);
    printf("The value of a is also %d\n", *pointer_to_a);
    
    
    person * myperson = (person *) malloc(sizeof(person));
    myperson->name = "John";
    myperson->age = 27;
    free(myperson);
    
    
    // Allocate memory to store five characters
    int n = 5;
    char *pvowels = (char *) malloc(n * sizeof(char));

    pvowels[0] = 'A';
    pvowels[1] = 'E';
    *(pvowels + 2) = 'I';
    pvowels[3] = 'O';
    *(pvowels + 4) = 'U';

    for (i = 0; i < n; i++) {
        printf("%c ", pvowels[i]);
    }

    printf("\n");

    free(pvowels);
    
    
    
  return 0;
}


