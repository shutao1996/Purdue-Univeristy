#include "sorting.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int power (int base, int expt);
int* generate_seq (int Size, int* length);

long* Load_From_File(char* Filename, int* Size){
	FILE* fp = fopen(Filename, "rb");
	if (fp == NULL){
		printf("Please enter Valid filename\n");
		return NULL;
	}
	fseek(fp, 0, SEEK_END);
	int length = ftell(fp) / sizeof(long);
	*Size = length;
	fseek(fp, 0 , SEEK_SET);
	long* numArr = malloc(sizeof(*numArr) * length);
	if (numArr == NULL){
		printf("Cannot allocate space for the array\n");
		return NULL;
	}
	if ((fread(numArr, sizeof(long), length, fp)) != length){
		printf("Mistakes were made when reading the file\n");
		return NULL;
	}
	fclose(fp);
	return numArr;
}

int Save_To_File(char* Filename, long* Array, int Size){
	FILE* fp = fopen(Filename, "wb");
	if (fp == NULL){
		printf("Cannot open the file to write\n");
		return 0;
	}
	int num = fwrite(Array, sizeof(long), Size, fp);
	if (num != Size){
		printf("Mistakes were made when writing the file\n");
		return 0;
	}
	
	fclose(fp);

	return num;
}

int* generate_seq (int Size, int* length){
	int numStart = 2;
	int height = 0;
	int num;
	int i;
	*length = 0;
	while (numStart < Size){
		numStart = numStart * 2;
		height++;
	}
	if (Size == 0 || Size == 1){
		return NULL;
	}
	else {
		int* array = malloc(sizeof(*array));
		for (i = 0; i <= height;i++){
			int j = i;
			int m = 0;
			while (j >= 0){
				 num = power(2,j) * power(3,m); 
				 if (num < Size){ 
					 if((*length) > 0){ 
						array = realloc(array, ((*length) + 1) * sizeof(*array));
					}
					array[(*length)] = num;
					(*length)++;
					j--;
					m++;
				}
				else{
					break;
				}
			}
		}
		return array;
	}	
}

void Shell_Insertion_Sort(long* Array, int Size, double* N_comp, double* N_move){
	int length;
	int* seqArry = generate_seq(Size,&length);
	long temp;
	int i;
	int k;
	int j;
	for(k = length - 1; k >= 0; k--){
		int gap = seqArry[k];
		for (j = gap; j <= Size - 1; j++){
			temp = Array[j];
			(*N_move)++;
			i = j;
			while (i >= gap && Array[i-gap] > temp){
				Array[i] = Array[i-gap];
				i = i - gap;
				(*N_move)++;
				(*N_comp)++;
			}
			Array[i] = temp;
			(*N_move)++;
		}
	}
		while(Size >=0){
		printf("\n%ld",Array[Size]);
		Size = Size - 1;
	}  
	free(seqArry);
}

int power (int base, int expt){
	int num = 1;
	while (expt > 0){
		num *= base;
		expt--;
	}
	return num;
}                                                                                                                                                                           

void Shell_Selection_Sort(long* Array, int Size, double* N_comp, double* N_move){
	int hold;
	long temp;
	int gap1;
	int length;
	int k;
	int i;
	int j;
	int* seqArry = generate_seq(Size, &length);
	for(k = length -1; k >= 0 ; k--){
		gap1 = seqArry[k];
		for (i = 0; i < Size - gap1; i++){
			hold = i;
			j = i + gap1;	
			if(Array[j] < Array[hold]){
				hold = j;
			}
			(*N_comp)++;
			temp = Array[i];
			Array[i] = Array[hold];
			Array[hold] = temp;
			(*N_move) += 3;
		}
	}
		while(Size >=0){
		printf("\n%ld",Array[Size]);
		Size = Size - 1;
	}  
	free(seqArry);
}

int Print_Seq(char* Filename, int Size){
	int length;
	FILE* fp = fopen(Filename, "w");
	int* numArray = generate_seq(Size,&length);
	int num = 0;
	int i;
	for(i = 0; i < length; i++){
		fprintf(fp, "%d\n" ,numArray[i]);
		num++;
	}
	fclose(fp);
	free(numArray);
	return num;
}
