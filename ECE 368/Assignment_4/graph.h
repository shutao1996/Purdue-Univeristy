typedef struct _Node{
	int index;
	int x;
	int y;
//	struct _Node * ; //use for dijkstra
	struct _Node * next;//queue
	struct _Node * prev;
}Node;

typedef struct _Edge{
	struct _Vnode * head;
}Edge;

typedef struct _Vnode{
	int index;
	int weight;
	struct _Vnode * next;	
}Vnode;
