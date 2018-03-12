#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include "packing.h"


int main(int argc,char * argv[]){
	treeNode * root = Load_From_File(argv[1]);
	if(root == NULL){
		printf("File did not load correctly\n");
		return EXIT_FAILURE;
	} 

	treeNode *node = Perform_Packing(root);
	
	Save_To_File(argv[2],root);
	
	printf("Width: %le\n", root -> width);
	printf("Heigth: %le\n", root -> height);
	printf("X-coordinate: %le\n", node -> x_pos);
	printf("Y-coordinate: %le\n", node -> y_pos);

	free_tree(root);                               
	return EXIT_SUCCESS;
}

