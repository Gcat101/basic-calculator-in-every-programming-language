#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("\n");

    int first;
    int second;
    char action;
    int result;

    printf("Input your first number: ");
    if (scanf("%d", &first)==0) {
        printf("Unknown number\n\n");
        exit(1);
    }
    printf("Input your second number: ");
    if (scanf("%d", &second)==0) {
        printf("Unknown number\n\n");
        exit(1);
    }

    printf("What do you want to do (+|-|*|/): ");
    scanf(" %c", &action);

    switch (action)
    {
    case '+':
        result=first+second;
        break;
    case '-':
        result=first-second;
        break;
    case '*':
        result=first*second;
        break;
    case '/':
        result=first/second;
        break;
    default:
        printf("Unknown action\n\n");
        exit(1);
    }

    printf("Result: %d\n\n", result);
}