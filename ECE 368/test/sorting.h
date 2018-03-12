#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

typedef struct _Node{
	long value;
	struct _Node *next;
}Node;

typedef struct _List{
	Node *node;
	struct _List *next;
}List;

Node *Load_From_File(char *Filename);
int Save_To_File(char *Filename, Node *list);
Node *Shell_Sort(Node *list);
