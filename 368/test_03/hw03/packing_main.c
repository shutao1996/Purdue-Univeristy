#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include "packing.h"

int main(int argc, char *argv[]){
	TreeNode *root = Load_From_File(argv[1]);
	if(root == NULL){
		printf("File does not exist\n");
		return EXIT_FAILURE;
	}
	TreeNode *node = Perform_Packing(root);
	Save_To_File(argv[2],root);
	printf("Width: %le\n", root -> width);
	printf("Heigth: %le\n", root -> height);
	printf("X-coordinate: %le\n", node -> x_cor);
	printf("Y-coordinate: %le\n", node -> y_cor);
	Destroy_Tree(root);
	return EXIT_SUCCESS;
}
