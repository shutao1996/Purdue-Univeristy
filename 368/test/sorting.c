#include "sorting.h"
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>


void Free_List(Node *list);
int Pow_Func(int base, int value);
Node *Gen_Seq(int *length, int size);
void Node_Swap(Node **list, Node *front_prev, Node *back_prev, Node *front, Node *back);
void Reverse_Sequence(Node **list);
Node *Traverse_List(Node* front, int distance);

Node *Load_From_File(char *Filename){
	FILE *fp = fopen(Filename, "rb");
	if(fp == NULL){
		return NULL;
	}
	fseek(fp,0,SEEK_END);
	int size = (ftell(fp) / sizeof(long));
	if(size == 0){
		fclose(fp);
		return NULL;
	}
	fseek(fp, 0, SEEK_SET);
	Node *node = malloc(sizeof(*node));
	node -> next = NULL;
	if((fread(&(node -> value), sizeof(long),1,fp)) != 1){
		fclose(fp);
		free(node);
		return NULL;
	}
	int j;
	Node *temp = node;
	for(j = 0; j < (size - 1); j++){
		Node *new_node = malloc(sizeof(*new_node));
		new_node -> next = NULL;
		if((fread(&(new_node -> value), sizeof(long),1,fp)) != 1){
			fclose(fp);
			Free_List(node);
			return NULL;
		}
		temp -> next = new_node;
		temp = new_node;
	}
	fclose(fp);
	return node;
}

int Save_To_File(char *Filename, Node *list){
	FILE *fp = fopen(Filename, "wb");
	if(fp == NULL){
		return 0;
	}
	int size = 0;
	Node *temp = list;
	while(temp != NULL){
		size++;
		temp = temp -> next;
	}
	if(size == 0){
		fclose(fp);
		return size;
	}
	temp = list;
	int i, check;
	for(i = 0;i < size; i++){
		if(check = fwrite(&(temp -> value), sizeof(long), 1,fp) != 1){
			fclose(fp);
			return 0;
		}
		temp = temp -> next;
	}
	fclose(fp);
	return size;
}

Node *Shell_Sort(Node *list){
	int size = 0;
	Node *temp = list;
	while(temp != NULL){
		temp = temp -> next;
		size++;
	}
	if(size == 0 || size == 1){
		return list;
	}
	int length = 0;
	Node *sequence = Gen_Seq(&length, size);
	if(sequence == NULL){
		return list;
	}
	Node* empty_node = malloc(sizeof(*empty_node));
	empty_node -> value = 0;
	empty_node -> next = list;
	list = empty_node;
	size++;
	Reverse_Sequence(&sequence);
	Node *seq_node = sequence;
	int k,z;
	int i;
	for(i = 0; i < length; i++){
		Node *front_prev = NULL;
		Node *front = NULL;
		Node *back_prev = NULL;
		Node *back = NULL;
		int gap = seq_node -> value;
		for(k = 0; k < (size - gap - 1); k++){
			if(k == 0){
				front = list -> next;
			}
			else{
				front = front_prev -> next;
			}
			if(k == 0){
				back_prev = Traverse_List(front, gap - 1);
			}
			back = back_prev -> next;
			if((back -> value) < (front -> value)){
				Node_Swap(&(list -> next), front_prev, back_prev, front, back);
				front_prev = back;
				back_prev = front;
			}
			else{
				front_prev = front;
				back_prev = back;
			}
		}
		seq_node = seq_node -> next;
	}
	list = list -> next;
	free(empty_node);
	Free_List(sequence);
	return list;
}

Node *Traverse_List(Node* front, int distance){
	Node* temp = front;
	int i;
	for(i = 0; i < distance; i++){
		temp = temp -> next;
	}
	return temp;
}

void Node_Swap(Node **list, Node *front_prev, Node *back_prev, Node *front, Node *back){
	if(front_prev != NULL){
		front_prev -> next = back;
	}
	else{
		*list = back;
	}
	if(back_prev != NULL){
		back_prev -> next = front;
	}
	else{
		*list = front;
	}
	Node *temp = back -> next;
	back -> next = front -> next;
	front -> next = temp;
	return;
}

Node *Gen_Seq(int *length, int size){
	if(size == 0 || size == 1){
		return NULL;
	}
	int base = 2;
	int i = 0;
	while(base < size){
		base = 2 * base;
		i++;
	}
	int j, k;
	Node *sequence = malloc(sizeof(*sequence));
	sequence -> next = NULL;
	Node *temp = sequence;
	for(j = 0; j <= i; j++){
		for(k = 0; k <= j; k++){
			int num = (Pow_Func(2, j-k)) * (Pow_Func(3,k));
			if(num < size){
				if((*length) == 0){
					sequence -> value = num;
				}
				else{
					Node *new_node = malloc(sizeof(*new_node));
					new_node -> next = NULL;
					new_node -> value = num;
					temp -> next = new_node;
					temp = temp -> next;
				}
				(*length)++;
			}
			else{
				break;
			}
		}
	}
	return sequence;
}

void Free_List(Node* list){
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

void Reverse_Sequence(Node **list){
	if(((*list) -> next == NULL) || ((*list) == NULL)){
		return;
	}
	Node *temp = *list;
	*list = (*list) -> next;
	Node *temp2 = *list;
	Reverse_Sequence(list);
	temp2 -> next = temp;
	temp -> next =  NULL;
	return;
}

int Pow_Func(int base, int value){
	int result = 1;
	int i;
	if(value == 0){
		return result;
	}
	else if(value == 1){
		result = base;
		return result;
	}
	else{
		for(i = 0; i < value; i++){
			result = result * base;
		}
	}
	return result;
}
