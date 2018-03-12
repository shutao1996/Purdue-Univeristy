typedef struct tnode{
	long value;
	struct tnode * left;
	struct tnode * right;
}tnode;

//libraries
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

//function declarations
tnode*mergeTrees(tnode*t1,tnode*t2);//merge two trees
void*printTrees(tnode*t3); //prints tree inorder traversal
void destroyTree(tnode * children);//free the tree
struct tnode* newNode(long value);//allocate a new tree node

//creat a complexity .txt file to wrtie a space and time complexity

/*int main(int argc,char* argv[]){



	return EXIT_SUCCESS;
}*/

tnode*mergeTrees(tnode * t1,tnode * t2){
	if(t1 == NULL) return t2;
	if(t2 == NULL) return t1;
	t1 -> value += t2 -> value;
	t1->left = mergeTree(t1->left,t2->left);
	t1->right = mergeTrees(t1->right,t2->right);
	return t1;
}
struct tnode*newNode(long data)
{
	struct tnode * node = (struct tnode *)malloc(sizeof(struct tnode));
	node -> value = data;
	node -> left = NULL;
	node -> right = NULL;
	return node;
} 

void destroyTree(tnode * children){
	if(children != NULL){
		destroyTree(children -> left);
		destroyTree(children -> right);
		free(children);
	}
	return 0;
}

void*printTrees(tnode*t3){
	if(tnode == NULL) return;
	printTrees(t3 -> left);
	printf("%ld",t3->value);
	printTrees(t3 -> right);
	return 0;
}

