/* 1- What is a linked list, and how does it differ from an array?
Linked list is a linear data structure where elements are connected togather using pointers. In linked list each node 
contains data and a pointer to the next node in the list. */

// Implement a function to insert a node at the beginning of a linked list.
class Node {
  int data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node? firstNode;

  void addFront(int data) {
    Node newNode = Node(data);
    newNode.next = firstNode;
    firstNode = newNode;
  }
}