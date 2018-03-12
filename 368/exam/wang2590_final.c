#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

//space complexity:  O(n)     time complexity:  O(n) since each node in tree is visited only once

//struct TreeNode * newNode(int data);
struct TreeNode * invertTree(struct TreeNode * root);
void printPostOrder(struct TreeNode * root);

int main(int argc,char * argv[]){
	

	return EXIT_SUCCESS;
}

struct TreeNode{
	int val;
	struct TreeNode * left;
	struct TreeNode * right;
};
struct TreeNode * invertTree(struct TreeNode * root){
	if (root == NULL) return NULL;
	root -> left = invertTree(root -> left);
	root -> right = invertTree(root -> right);
	struct TreeNode * temp = root -> left;
	root -> left = root -> right;
	root -> right = temp;
	return root;
}
/*
struct TreeNode * newNode(int data){
	struct TreeNode * node = (struct TreeNode *) malloc(sizeof(struct TreeNode));
	node -> val = data;
	node -> left = NULL;
	node -> right = NULL;
	return (node);
}

struct TreeNode * invertTree(struct TreeNode * root){
	if (root == NULL) return NULL;
	struct TreeNode * temp;
	//find the last subNode 
	invertTree(root -> left);
	invertTree(root -> right);
	//swap the pointers in the node
	temp = root -> left;
	root -> left = root -> right;
	root -> right = temp;
	return root;
}
*/
void printPostOrder(struct TreeNode * root){
	if (root == NULL) return;
	
	printPostOrder(root -> left);
	printPostOrder(root -> right);
	printf("%d",root -> val);
}
