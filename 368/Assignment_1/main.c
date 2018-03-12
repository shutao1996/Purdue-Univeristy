#include "sorting.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int main(int argc,char* argv[]){
	int size = 0;
	int stored = 0;
	int k_value = 0;
	double number_compar = 0;
	double number_move = 0;
	double t_sort = 0;
	double t_input = 0;
	double t_output = 0;
	
	clock_t clock_start_load = clock();
	long * numArray = Load_From_File(argv[2],&size);
	clock_t clock_end_load = clock();
	t_input = ((double)clock_end_load - clock_start_load) / CLOCKS_PER_SEC;	
	if(numArray == NULL){
		printf("The array was not loaded corrected\n");
		return EXIT_FAILURE;
	}
	
	if(strcmp(argv[1],"i") == 0){
		clock_t clock_start = clock();
		Shell_Insertion_Sort(numArray,size,&number_compar,&number_move);
		clock_t clock_end = clock();
		t_sort = ((double)clock_end - clock_start) / CLOCKS_PER_SEC;
	}
	else if(strcmp(argv[1],"s") == 0){
		clock_t clock_start = clock();
		Shell_Selection_Sort(numArray,size,&number_compar,&number_move);
		clock_t clock_end = clock();
		t_sort = ((double)clock_end - clock_start) / CLOCKS_PER_SEC;
	}
	else{
		printf("wrong sortng method has been selected\n");
		return EXIT_SUCCESS;
	}
	
	clock_t clock_start_save = clock();
	stored = Save_To_File(argv[4],numArray,size); 
	clock_t clock_end_save = clock();
	t_output = ((double) clock_end_save - clock_start_save) / CLOCKS_PER_SEC;
	
	
	k_value = Print_Seq(argv[3],size);

	printf("Number of long integers read: %d\n", size);
	printf("Number of long integers stored: %d\n", stored);
	printf("Length of the sequence: %d\n", k_value);
	printf("Number of comparisons: %le\n", number_compar);
	printf("Number of moves: %le\n", number_move);
	printf("I/O time: %le\n", t_input + t_output);
	printf("Sorting time: %le\n", t_sort);
	
	free(numArray);

	return EXIT_SUCCESS;
}

		
		
	
