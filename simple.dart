import 'dart:io';
void main() {}

/* 1- What is a linked list, and how does it differ from an array?
Linked list is a linear data structure where elements are connected togather using pointers. In linked list each node 
contains data and a pointer to the next node in the list. */

class Node {
  int data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node? firstNode;

// Implement a function to insert a node at the beginning of a linked list.
  void addFront(int data) {
    Node newNode = Node(data);
    newNode.next = firstNode;
    firstNode = newNode;
  }
  // How do you delete a node from a linked list?
  void deleteNode() {
    if(firstNode == null) return;
    Node? temp = firstNode!.next;
    firstNode!.next = null;
    firstNode = temp;
  }
  // Write a function to traverse and print a linked list.
  List<int> printLinkedList(){
    List<int> dataList = [];
    Node? currentData = firstNode!;
    while(currentData != null) {
      dataList.add(currentData.data);
      currentData = currentData.next;
    }
    return dataList;
  }
}
