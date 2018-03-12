typedef  struct _treeNode{
	int label;
	char character;
	int size;
	double width;
	double height;
	double x_pos;
	double y_pos;
	struct _treeNode *left;
	struct _treeNode *right;
}treeNode;

typedef struct _List{
	treeNode * node;
	struct _List *next;
}List;

treeNode *Load_From_File(char *Filename);
treeNode *Perform_Packing(treeNode *root);
void Save_To_File(char *Filename, treeNode *tree);
void free_tree(treeNode * root);

