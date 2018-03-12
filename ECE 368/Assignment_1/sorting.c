#include "sorting.h"
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int power (int base, int index);
int *get_sequence(int Size, int* length);

long * Load_From_File(char * Filename, int *Size){
	FILE * fp = fopen(Filename, "rb");
	if(fp == NULL)	return NULL;//EXIT_FAILURE;
	fseek(fp,0,SEEK_END);
	int length = ftell(fp) / sizeof(long);
	fseek(fp,0,SEEK_SET);
	long * array = malloc(sizeof(*array) * length);
	if((fread(array,sizeof(long),length,fp)) != length) return NULL;// EXIT_FAILURE;
	*Size = length;
	fclose(fp);
	return array;
}

int Save_To_File(char * Filename,long * Array,int Size){
	int elements = 0;
	FILE * fp = fopen(Filename, "wb");
	if (fp == NULL) return EXIT_FAILURE;
	elements = fwrite(Array, sizeof(long),Size, fp);
	if(Size != elements) return EXIT_FAILURE;
	fclose(fp);
	return elements;
}

int power(int base, int ind){
	int num = 1;
	if(ind == 1){
		num = base;
		return num;
	}
	else if (ind == 0)	return num;
	else {
		while(ind > 0){
			num = num * base;
			ind = ind - 1;
		}
	return num;
	}		
}

int *get_sequence(int Size, int* length){
	int last_k = 0; //the last k sequence value
	int p = 0; //for 2 power
	int q = 0; //for 3 power
	int level = 0; //each new level of the triangle sequence
	*length = 0;
	if (Size == 0 || Size == 1) return NULL;
	else{
		int * array = malloc(sizeof(*array));
		while(last_k < Size){
	
			q = 0;
			for(p = level; p >= 0; p--){
				last_k = power(2,p) * power(3,q);
				if(last_k >= Size){
					(*length)--;
					break;
				}
				if((*length) != 0){
				array = realloc(array, ((*length) + 1) * sizeof(*array));  
				}
				
				
				array[(*length)] = last_k;
				(*length)++;
				q++;
			}
			level++;
		}
		return array;
	}	
}	

 [void Shell_Insertion_Sort(long*Array,int Size,double*N_Comp,double*N_Move){
	int length;
	int* sequenceArray = get_sequence(Size,&length);
	long temp;
	int i;
	int k;
	int j;
	for(k = length - 1; k >= 0; k--){
		int gap_num = sequenceArray[k];
		for (j = gap_num; j <= Size - 1; j++){
			temp = Array[j];
			(*N_Move)++;
			i = j;
			while (i >= gap_num && Array[i - gap_num] > temp){
				Array[i] = Array[i - gap_num];
				i = i - gap_num;
				(*N_Move)++;
				(*N_Comp)++;
			}
			Array[i] = temp;
			(*N_Move)++;
		}
	}
	free(sequenceArray);
}

void Shell_Selection_Sort(long *Array,int Size,double*N_Comp,double *N_Move){
	int set;
	long temp;
	int range;
	int length;
	int k;
	int i;
	int j;
	int* sequenceArray = get_sequence(Size, &length);
	for(k = length -1; k >= 0 ; k--){
		range = sequenceArray[k];
		for (i = 0; i < Size - range; i++){
			set = i;
			j = i + range;	
			if(Array[j] < Array[set]){
				set = j;
			}
			(*N_Comp)++;
			temp = Array[i];
			Array[i] = Array[set];
			Array[set] = temp;
			(*N_Move) += 3;
		}
	}
	free(sequenceArray);
}

int Print_Seq(char * Filename,int Size){
	FILE * fp = fopen(Filename, "w");
	int length;
	int * array = get_sequence(Size, &length);
	int num = 0;
	int i;
	for (i =0 ;i< length;i++){
		fprintf(fp,"%d\n",array[i]);
		num++;
	}
	fclose(fp);
	free(array);
	return num +1;
}
	

