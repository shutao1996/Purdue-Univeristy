#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "mapping.h"


Vnode * Load_From_File(char * Filename, int* size);
int calc_length(int x1,int y1,int x2, int y2);
Adj_Node * create_adj_node(int index,int weight);
void freeGraph(Vnode * map,int size);
void freeList(Adj_Node * list);
void printGraph(Vnode * graph,int size);

int main(int argc, char * argv[]){
	int size = 0;
	Vnode * map = Load_From_File(argv[1], &size);
	
	if (map == NULL){
		printf("File did not load correctly\n");
		return EXIT_FAILURE;
	}

	printGraph(map,size);	

	freeGraph(map,size);
	free(map);

	return EXIT_SUCCESS;
}

Vnode * Load_From_File(char * Filename, int* size){
	FILE * fp = fopen(Filename,"r");
	if(fp == NULL) return NULL;
	
	int num_vertex;//number of vertex
	int num_edges;//number of edges
	int i;
	int k;
	fscanf(fp,"%d %d\n",&num_vertex,&num_edges);
	*size = num_vertex;
	Vnode * vertex = malloc(num_vertex * sizeof(Vnode));//initialize array head
	for(i = 0;i < num_vertex; i++){
		fscanf(fp,"%d %d %d\n",&(vertex[i].vertices),&(vertex[i].x),&(vertex[i].y));
		vertex[i].visited = false;	
		vertex[i].children = NULL;//create_adj_node(0,0);	
	//	printf("%d %d %d\n",vertex[i].vertices,vertex[i].x,vertex[i].y);////////
	}
	
	int adj_weight;
	int parent;
	int child;
	//adding edges onto the adjacency array
	for(k = 0;k < num_edges;k++){
		fscanf(fp,"%d %d\n",&parent,&child);
		adj_weight = calc_length(vertex[parent].x,vertex[parent].y,vertex[child].x,vertex[child].y);
		
	//	printf("%d %d %d\n",parent,child,adj_weight);///////////

		//creat edge nodes for array
		if (vertex[parent].children == NULL){
			vertex[parent].children = create_adj_node(child,adj_weight);
		}
		else{
			Adj_Node* temp = create_adj_node(child,adj_weight);
			temp -> next = vertex[parent].children;
			vertex[parent].children = temp;
		} 

	//	printf("%d %d\n",(vertex[parent].children -> index),(vertex[parent].children -> weight));/////
		if (vertex[child].children == NULL){ 
			vertex[child].children = create_adj_node(parent,adj_weight);
		}
		else{
			Adj_Node * temp2 = create_adj_node(parent,adj_weight);
			temp2 -> next = vertex[child].children;
			vertex[child].children = temp2;
		}
	//	printf("%d %d\n",(vertex[child].children -> index),(vertex[child].children -> weight));/////
	}

	fclose(fp);
	return vertex;	
}

void printGraph(Vnode * graph,int size){
	int i;
	for(i = 0; i < size; i++){
		printf("vertices: %d\n\n",graph[i].vertices);
		Adj_Node * temp = graph[i].children;
		while(temp != NULL){
			printf("%d\n",temp -> index);		
			temp = temp -> next;
		}
		printf("\n");
	}
	return;
}

void freeGraph(Vnode * map,int size){
	int k;
//	printf("size to be free:%d",size);
	for(k = 0;k < size;k++){
		freeList(map[k].children);
	}
	return;
}
void freeList(Adj_Node * list){
	Adj_Node * temp;
	while(list != NULL){
		temp = list;
		list = list -> next;
		free(temp);
	}
	return;
}

int calc_length(int x1,int y1,int x2, int y2){
	int num;
	num = (int)pow((pow((x2 - x1),2) + pow((y2 - y1),2)),0.5);
	return num;
}

Adj_Node * create_adj_node(int index,int weight){
	Adj_Node * node = malloc(sizeof(Adj_Node));
	node -> next = NULL;
	node -> index = index;
	node -> weight = weight;
	return node;
}

