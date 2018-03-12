#include "sorting.h"

int main(int argc, char *argv[]){
	clock_t start_input, end_input, start_output, end_output, start_sort, end_sort;
	start_input = clock();
	Node *list = Load_From_File(argv[1]);
	if(list == NULL){
		printf("File does not exist\n");
		return EXIT_FAILURE;
	}
	end_input = clock();
	double input_time = (double)(end_input - start_input) / CLOCKS_PER_SEC;
	start_sort = clock();
	list = Shell_Sort(list);
	end_sort = clock();
	double sort_time = (double)(end_sort - start_sort) / CLOCKS_PER_SEC;
	start_output = clock();
	int size = Save_To_File(argv[2],list);
	end_output = clock();
	double output_time = (double)(end_output - start_output) / CLOCKS_PER_SEC; 
	double total_time = input_time + output_time;
	Free_List(list);
	printf("I/O time: %le\n", total_time);
	printf("Sorting time %le\n", sort_time);
	return EXIT_SUCCESS;
}
