#define true 1
#define false 0
typedef struct _Adj_Node{
	struct _Adj_Node * next;
	int weight;//the length between the nodes
	int index;//used for Dijkstra
}Adj_Node;

typedef struct Vertex{
	int x; //x coordinate
	int y; //y coordinate
	int vertices; //points on a plane
	struct _Adj_Node * children;//current vertex's parent
	int visited;//check if the node has been visited
}Vnode;

	
//List * Load_From_File(char * Filename);
//void Load_From_File2(char * Filename,List * map);
