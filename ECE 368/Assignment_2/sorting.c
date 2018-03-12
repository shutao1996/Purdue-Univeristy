#include "sorting.h"
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

void freeList (Node * list);
int power (int base,int index);
Node * Generate_Sequence(int * length,int size);
void ReverseList(Node ** list);
void NodeSwap(Node **list, Node * front,Node * back,Node * newFront,Node * newBack);

//Node *Traverse(Node*newFront,int distance);

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

void freeList(Node* list){
	if(list == NULL){
		return;
	}
	while(list != NULL){
		Node *temp = list;
		list = list -> next;
		free(temp);
	}
	return;
}

Node * Load_From_File(char * Filename){
	FILE *fp = fopen(Filename,"rb");

	if(fp == NULL) return NULL;
	fseek(fp,0,SEEK_END);
	int length = ftell(fp) / sizeof(long);
	fseek(fp,0,SEEK_SET);

	Node * node = malloc(sizeof(Node));
	node -> next = NULL;
	if(fread(&(node -> value),sizeof(long),1,fp) != 1){
		fclose(fp);
		free(node);
		return NULL;
	}

	int i;
	Node *temp = node;
	for (i = 0;i < (length - 1);i++){
		Node * newNode = malloc(sizeof(Node));
		newNode -> next = NULL;
		if(fread(&(newNode -> value),sizeof(long),1,fp) != 1){
			fclose(fp);
			freeList(node);
			return NULL;
		}
		temp -> next = newNode;
		temp = newNode;
	}    
	fclose(fp);
	return node;
}

int Save_To_File(char * Filename,Node * list){
	FILE * fp = fopen(Filename,"wb");
	if(fp == NULL) return EXIT_FAILURE;
	//count the number of the list
	int size = 0;
	Node * temp = list;
	for(size = 0; temp!= NULL;size++){
		temp = temp -> next;
	}

	if (size == 0){
		fclose(fp);
		return size;
	}
	Node * head = list;//reassign head again	
	int i = 0;
	for (i = 0; i < size; i++){
		if (fwrite(&(head -> value),sizeof(long),1,fp) !=1){
			fclose(fp);
			return EXIT_FAILURE;
		}
		head = head -> next;
	}
	fclose(fp);
	return size;
}

Node * Shell_Sort(Node * list){   //selection sort implement
	//counting size of array
	int size = 0;
	Node *temp = list;
	for(size = 0;temp != NULL;size++){
		temp = temp -> next;
	}
	if(size == 0 || size == 1)  return list;
	
	//get sequence & reverse sequence
	int length = 0;
	Node *sequence = Generate_Sequence(&length, size);
	if(sequence == NULL)  return list;
	ReverseList(&sequence);
	Node *seqHead = sequence;

	//create an empty node to munipulate
	Node* empty_node = malloc(sizeof(*empty_node));
	empty_node -> value = 0;
	empty_node -> next = list;
	list = empty_node;
	size++;

	//use selection sort to carry out shell sort
	int i;
	int j;
	for(i = 0; i < length; i++){
		//creat node for list sort usage
		Node *oneAhead = NULL;
		Node *front = NULL;
		Node *backOne = NULL;
		Node *back = NULL;
		int gap = seqHead -> value;
		j = 0;
		while(j < (size - gap -1)){
			if(j == 0){
				front = list -> next;
			}
			else{
				front = oneAhead -> next;
			}
			if(j == 0){
				Node * gen = front;
				int q = 0;
				while(q < (gap - 1)){
					gen = gen -> next;
					q++;
				}
				backOne = gen;
			}
			back = backOne -> next;
			if((back -> value) < (front -> value)){
				NodeSwap(&(list -> next), oneAhead, backOne, front, back);
				oneAhead = back;
				backOne = front;
			}
			else{
				oneAhead = front;
				backOne = back;
			}
		j++;
		}
		seqHead = seqHead -> next;
	}
	list = list -> next;
	//free unused node
	free(empty_node);
	freeList(sequence);
	return list;
}


void NodeSwap(Node **list, Node * front,Node * back,Node * newFront,Node * newBack){
	if(front != NULL){
		front -> next = newBack;
	}
	else{
		*list = newBack;
	}
	if(back != NULL){
		back -> next = newFront;
	}
	else{
		*list = newFront;
	}
	Node *temp = newBack -> next;
	newBack -> next = newFront -> next;
	newFront -> next = temp;
	return;
}

Node * Generate_Sequence(int * length,int size){
	int last_k = 0; //the last k sequence value
	int p = 0; //for 2 power
	int q = 0; //for 3 power
	int level = 0; //each new level of the triangle sequence
	*length = 0;
	if (size == 0 || size == 1) return NULL;
	else{
		*length = 1;		
		Node * sequence = malloc(sizeof(*sequence));
		sequence -> next = NULL;
		Node * temp = sequence;
		while(last_k < size){
			q = 0;
			for(p = level; p >= 0; p--){
				last_k = power(2,p) * power(3,q);
				if(last_k >= size){
					(*length)--;
					break;
				}
				if((*length) != 0){
					Node * newNode = malloc(sizeof(*newNode));
					newNode -> next = NULL;
					newNode -> value = last_k;
					temp -> next = newNode;
					temp = temp -> next;	
				}
				sequence -> value= last_k;

				(*length)++;
				q++;
			}
			level++;
		}
		Node * seq_temp = sequence;
		sequence = sequence -> next;
		free(seq_temp);
		return sequence;
	}	
}		

void ReverseList(Node ** list){
	if(((*list) -> next == NULL) || ((*list) == NULL)) return;
	Node * temp = *list;
	*list = (*list) -> next;
	Node * temp2 =*list;
	//	printf("reverse_value: %ld\n", ((*list) -> value));///////////
	ReverseList(list);
	temp2 -> next = temp;
	temp -> next = NULL;
	return;
}
