#include <stdio.h>
#include <stdlib.h>

// Define a node structure for the linked list
struct Node {
    int data;
    struct Node* next;
};

// Initialize the stack's top pointer as NULL
struct Node* top = NULL;

// Function to push an element onto the stack
void push(int value) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    if (!newNode) {
        printf("Heap overflow\n");
        return;
    }
    newNode->data = value;
    newNode->next = top;
    top = newNode;
    printf("Pushed %d onto the stack\n", value);
}

// Function to pop an element from the stack
int pop() {
    if (top == NULL) {
        printf("Stack underflow\n");
        return -1;
    }
    int poppedValue = top->data;
    struct Node* temp = top;
    top = top->next;
    free(temp);
    printf("Popped %d from the stack\n", poppedValue);
    return poppedValue;
}
