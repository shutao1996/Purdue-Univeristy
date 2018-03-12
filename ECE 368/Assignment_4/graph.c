#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "graph.h"



int main(int argc, char * argv[]){

	Vnode * graph = Load_From_File(argv[1]);
	if(graph == NULL){
		printf("File did not load correctly\n");
		return EXIT_FAILURE;
	}
	
	

	return EXIT_SUCCESS;
}

Vnode * Load_From_File(char * Filename){
	FILE * fp = fopen(Filename,"r");
	if(fp == NULL)return NULL;
	
	int 
