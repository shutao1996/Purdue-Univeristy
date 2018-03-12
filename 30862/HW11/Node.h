/*
 * Node.h
 */

#ifndef NODE_H_
#define NODE_H_

#include <iostream>
#include <string>
using namespace std;

template <class T> class Node{
public:
	//data fields:
	T data;//the object
	Node<T>* next;//pointer to the next node element
	Node<T>* prev;//pointer to the previous node element

//function
	Node(T data);
	Node(Node<T> &goal);
	virtual ~Node();
	void setNext(Node<T>* n);
	void setPrev(Node<T>* n);
	Node<T>* getNext();
	Node<T>* getPrev();
	T getData();
	bool operator<(const Node<T>& rhs) const;
	bool operator==(const Node<T>& rhs) const;
};
template <class T>Node<T>::Node(Node<T> &goal){
	data = goal.getData();
	prev = goal.getPrev();
	next = goal.getNext();
}

template <class T> Node <T> :: Node(T d) {
	data = d;
	next = NULL;
	prev = NULL;
}
template <class T> Node <T> ::~Node(){}
template <class T> void Node <T> ::setNext(Node<T>* n){
	next = n;
}
template <class T> void Node <T> :: setPrev(Node<T>* n){
	prev = n;
}
template <class T> Node<T>* Node <T> ::getNext(){
	return next;
}
template <class T> Node<T>* Node <T> ::getPrev(){
	return prev;
}
template <class T> T Node <T> ::getData(){

	return data;
}
template <class T> bool Node <T> :: operator<(const Node<T>& rhs)const{
	return data < rhs.data;
}
template <class T> bool Node <T> :: operator==(const Node<T>& rhs)const{
	return data == rhs.data;
}
#endif /* NODE_H_ */
