/*
 * LinkedList.h
 */

#ifndef LINKEDLIST_H_
#define LINKEDLIST_H_
#define TRUE 1
#define FALSE 0
#include <iostream>
#include "Node.h"
using namespace std;

template <class T> class LinkedList{
	//data fields:
	Node<T> *head;
	//functions:
public:
	LinkedList();
	LinkedList(T node);
	virtual ~LinkedList();
	bool getNodeData(T d);
	bool addNode(T d);
	bool deleteNode(T d);
	void print();

};

template <class T> void LinkedList<T>::print(){
	Node<T> * gg = head;
	while(gg != NULL){
		cout<<gg->getData()<<" ";
		gg = gg->getNext();
	}
	cout<<endl;
}
template <class T> LinkedList <T> :: LinkedList() {
	head = NULL;
}
template <class T> LinkedList <T> :: LinkedList(T node) {
	Node<T> * gg = new Node<T>(node);
	head = gg;
}
template <class T> LinkedList <T> ::~LinkedList(){
	Node<T>* temp = head;
	while(temp != NULL){
		temp = temp -> next;
		delete head;
		head = temp;
	}
}
template <class T> bool LinkedList <T> :: getNodeData(T d){
	Node <T> * temp = head;
	while(temp != NULL){
		if(d == temp->data){
			return TRUE;
		}
		temp = temp -> next;
	}
	return FALSE;
}
template <class T> bool LinkedList <T> :: addNode(T d){
	if(getNodeData(d)){
		return false;
	}

	Node<T>* node = new Node<T>(d);
	Node<T>* gg = head;
	if (head == NULL){ //if head empty
		head = node;
		return true;
	}
	if((node->data) < (head->data)){  //if head
	//			node -> next = head;
				head = node;
				node->next = gg;
	//			cout<<"yes";
				return true;
			}
	Node<T>* temp = head;
	while((temp-> next) != NULL){
		if((node->data) < (temp->next->data)){
			node->next = temp->next;
			temp->next = node;
			return true;
		}
		temp = temp -> next;
	}

	temp -> next = node;//insert in the end of list
  //  cout<<"yes";
	return true;
}
template <class T> bool LinkedList <T> :: deleteNode(T d){
	Node<T>* node = new Node<T>(d);
		if (head == NULL){ //if head empty
			return false;
		}
		Node<T>*gg = head;
		if((head->data) == (node->data)){
            head = head->next;
			delete gg;

			return true;
		}
		Node<T>* temp = head;

		while((temp -> next) != NULL){
			if((temp -> next->data) == (node->data)){
				gg = temp -> next;
				temp-> next = temp -> next -> next;
				delete gg;
				return true;
			}
			temp = temp -> next;
		}
		return true;
}

#endif /* LINKEDLIST_H_ */
