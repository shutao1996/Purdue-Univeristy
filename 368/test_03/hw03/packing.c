#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include "packing.h"

int Tree_Size(char *Filename);
Stack* Stack_Initial(int size);
void Stack_Push(Stack *stack_tree, StackElement* element);
StackElement *Stack_Pop(Stack *stack_tree); 
void Stack_Destory(Stack *stack_tree);
void HV_Cor(TreeNode *root);
TreeNode *Pick_Max(TreeNode *node1, TreeNode *node2,char choice);
void Node_Cor(TreeNode *root);
void Print_Tree(FILE *fp, TreeNode *root);
TreeNode *Search_Node(TreeNode *root, int number);

TreeNode *Load_From_File(char *Filename){
	FILE *fp = fopen(Filename, "r");
	if(fp == NULL){
		return NULL;
	}
	int size = Tree_Size(Filename);
	if(size == 0){
		return NULL;
	}
	Stack *stack_tree = Stack_Initial(size);
	TreeNode *root = NULL;
	int i;
	int real_size = 0;
	for(i = 0; i < size; i++){
		root = malloc(sizeof(TreeNode));
		root -> label = 0;
		root -> character = '0';
		root -> left = NULL;
		root -> right = NULL;
		root -> height = 0;
		root -> width = 0;
		root -> x_cor = 0;
		root -> y_cor = 0;
		root -> size = 0;
		fscanf(fp,"%c", &(root -> character));
		if((root -> character != 'H') && (root -> character != 'V')){
			fseek(fp, -1, SEEK_CUR);
			fscanf(fp, "%d(%le,%le)",&(root -> label), &(root -> width), &(root -> height));
			real_size++;
		}
		else{
			root -> right = Stack_Pop(stack_tree);
			root -> left = Stack_Pop(stack_tree);
		}
		Stack_Push(stack_tree, root);
		fscanf(fp,"\n");
	}
	root = Stack_Pop(stack_tree);
	root -> size = real_size;
	Stack_Destory(stack_tree);
	fclose(fp);
	return root;
}

void HV_Cor(TreeNode *root){
	if(root -> left == NULL){
		return;
	}
	if(root -> left -> width == 0){
		HV_Cor(root -> left);
	}
	if(root -> right -> width == 0){
		HV_Cor(root -> right);
	}
	if(root -> character == 'H'){
		root -> height = (root -> left -> height) + (root -> right -> height);
		TreeNode *temp = Pick_Max(root -> left, root -> right,'w');
		root -> width = temp -> width;
	}
	else if(root -> character == 'V'){
		root -> width = (root -> left -> width) + (root -> right -> width);
		TreeNode *temp = Pick_Max(root -> left, root -> right, 'h');
		root -> height = temp -> height;
	}
	return;
}

TreeNode *Pick_Max(TreeNode *node1, TreeNode *node2,char choice){
	TreeNode *temp = NULL;
	switch(choice){
		case 'w':
			temp = (node1 -> width) < (node2 -> width) ? node2 : node1;
			break;
		case 'h':
			temp = (node1 -> height) < (node2 -> height) ? node2 : node1;
			break;
		}
	return temp;
}

void Node_Cor(TreeNode *root){
	if(root == NULL){
		return;
	}
	if(root -> character == 'H'){
		root -> right -> x_cor = root -> x_cor;
		root -> right -> y_cor = root -> y_cor;
		root -> left -> x_cor = root -> x_cor;
		root -> left -> y_cor = root -> y_cor + root -> right -> height;
	}
	else  if(root -> character == 'V'){
		root -> right -> y_cor = root -> y_cor;
		root -> right -> x_cor = root -> x_cor + root -> left -> width;
		root -> left -> x_cor = root -> x_cor;
		root -> left -> y_cor = root -> y_cor;
	}
	Node_Cor(root -> left);
	Node_Cor(root -> right);
	return;
}

TreeNode *Perform_Packing(TreeNode *root){
	HV_Cor(root);
	Node_Cor(root);
	TreeNode *node = Search_Node(root, root -> size);
	return node;
}

void Save_To_File(char *Filename, TreeNode *tree){
	FILE *fp = fopen(Filename, "w");
	if(fp == NULL){
		return;
	}
	Print_Tree(fp, tree);
	fclose(fp);
	return;
}

TreeNode *Search_Node(TreeNode *root, int number){
	if(root == NULL){
		return NULL;
	}
	else if(root -> label == number){
		return root;
	}
	else{
		TreeNode *left = Search_Node(root -> left, number);
		if(left){
			return left;
		}
		left = Search_Node(root -> right, number);
		if(left){
			return left;
		}
	}
	return NULL;
}

void Print_Tree(FILE *fp, TreeNode *root){
	if(root == NULL){
		return;
	}
	Print_Tree(fp, root -> left);
	Print_Tree(fp, root -> right);
	if(root -> character != 'H' && root -> character != 'V'){
		fprintf(fp, "%d %le %le %le %le\n", root -> label, root -> width, root -> height, root -> x_cor, root -> y_cor);
	}
	return;
}

Stack* Stack_Initial(int size){
	Stack *stack_tree = malloc(sizeof(Stack));
	if(stack_tree == NULL){
		return NULL;
	}
	stack_tree -> content = malloc(sizeof(StackElement) * size);
	if(stack_tree -> content == NULL){
		return NULL;
	}
	stack_tree -> top = -1;
	stack_tree -> MaxSize = size;
	return stack_tree;
}

void Stack_Push(Stack *stack_tree, StackElement *element){
	(stack_tree -> top)++;
	stack_tree -> content[stack_tree -> top] = element;
	return;
}

StackElement *Stack_Pop(Stack *stack_tree){
	return stack_tree -> content[stack_tree -> top--];
}

void Stack_Destory(Stack *stack_tree){
	if((stack_tree -> content) != NULL){	
		free(stack_tree -> content);
	}
	if((stack_tree) != NULL){
		free(stack_tree);
	}
	return;
}

void Destroy_Tree(TreeNode *root){
	if(root == NULL){
		return;
	}
	Destroy_Tree(root -> left);
	Destroy_Tree(root -> right);
	free(root);
}

int Tree_Size(char *Filename){
	int line = 0;
	FILE *fp = fopen(Filename, "r");
	if(fp == NULL){
		return line;
	}
	int ch = fgetc(fp);
	while(ch != EOF){
		if(ch == '\n'){
			line++;
		}
		ch = fgetc(fp);
	}
	fclose(fp);
	return line;
}
