void main() {
  LinkedList list = LinkedList();

  list.addFront(12);
  list.addFront(11);
  list.addFront(10);

  list.deleteNode();
  print(list.printLength());
  list.deleteNode();
  print(list.findLength());

}

/* 1- What is a linked list, and how does it differ from an array?
Linked list is a linear data structure where elements are connected togather using pointers. In linked list each node 
contains data and a pointer to the next node in the list. */

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? firstNode;
  int linkedListLength = 0;

// Implement a function to insert a node at the beginning of a linked list.
  void addFront(int data) {
    Node newNode = Node(data);
    newNode.next = firstNode;
    firstNode = newNode;
    linkedListLength++;
  }

  // How do you delete a node from a linked list?
  void deleteNode() {
    if (firstNode == null) return;
    Node? temp = firstNode!.next;
    firstNode!.next = null;
    firstNode = temp;
    linkedListLength--;
  }

  // Write a function to traverse and print a linked list.
  List<int> printLinkedList() {
    List<int> dataList = [];
    Node? currentData = firstNode!;
    while (currentData != null) {
      dataList.add(currentData.data);
      currentData = currentData.next;
    }
    return dataList;
  }

  // Implement a function to find the length of a linked list.

  //1- if we create a size variable and initialize it in add and delete node methods: (prefered)
  int printLength() => linkedListLength;

  //2- method itself go through the list and count the size
  int findLength(){
    int counter = 0;
    if (firstNode == null) return 0;
    while (firstNode != null) {
      counter++;
      firstNode = firstNode!.next;
    }
    return counter;
  }

}
