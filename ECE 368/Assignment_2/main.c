#include "sorting.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

void FreeList (Node * list);

int main (int argc,char*argv[]){
	double t_input = 0;
	double t_sort = 0;
	double t_output = 0;
	
	clock_t clock_start_load = clock();
	Node * list = Load_From_File(argv[1]);
	clock_t clock_end_load = clock();
	t_input = ((double)clock_end_load - clock_start_load) / CLOCKS_PER_SEC;
	if(list == NULL){
		printf("List not correctly formed\n");
		return EXIT_FAILURE;
	}

	clock_t clock_start = clock();
	list = Shell_Sort(list);
	clock_t clock_end = clock();
	t_sort = ((double)clock_end - clock_start) / CLOCKS_PER_SEC;
	
	clock_t clock_start_save = clock();
/*int i = 0;
while(list != NULL)
{
	printf("%d: %ld\n",i,list -> value);
i++;
list = list -> next;
}*/ 	
	int stored = Save_To_File(argv[2],list);
	if(stored == 0) return EXIT_FAILURE; // to use stored
	clock_t clock_end_save = clock();
	t_output= ((double) clock_end_save - clock_start_save) / CLOCKS_PER_SEC;
	
	
	printf("I/O time: %le\n", t_input + t_output);
	printf("Sorting time: %le\n", t_sort);
	
	
	FreeList(list);
	return EXIT_SUCCESS;
}

void FreeList(Node* list){
	if(list == NULL){
		printf("here");
		return;
	}
	while(list != NULL){
		Node *temp = list;
	//	printf("here");
		list = list -> next;
		free(temp);
	}
	return;
} 

