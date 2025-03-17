void main() {
  LinkedList list = LinkedList();

  list.addFront(1);
  list.addFront(2);
  list.addFront(3);

print(list.printLinkedList());
list.reverseList();
print(list.printLinkedList());
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

  // medium part
  // Write a function to find the middle node of a linked list.
  int findMiddleNode() {
    if(firstNode == null) return 0;
    Node? goEnd = firstNode;
    Node? goMiddle = firstNode;
    while (goEnd != null && goEnd.next != null) {
      goMiddle = goMiddle!.next;
      goEnd = goEnd.next!.next;
    }
    return goMiddle!.data;
  }
  // Implement a function to reverse a linked list.
  void reverseList(){
    Node? newHead;
    Node? current = firstNode;
    Node? next;
    while (current != null) {
      next = current.next;
      current.next = newHead;
      newHead = current;
      current = next;
    }
    firstNode = newHead;
  }

  // How do you detect a cycle in a linked list?
  bool isCyclic(){
    Node? fast = firstNode;
    Node? slow = firstNode;
    while(fast != null && fast.next != null) {
      fast = fast.next!.next;
      slow = slow!.next;
      if(fast == slow) return true;
    }
    return false;
  }
  // Write a function to merge two sorted linked lists.
  Node? mergeSortedLists(Node? list1, Node? list2) {
  Node dummy = Node(0);
  Node? current = dummy;

  while (list1 != null && list2 != null) {
    if (list1.data <= list2.data) {
      current!.next = list1;
      list1 = list1.next;
    } else {
      current!.next = list2;
      list2 = list2.next;
    }
    current = current.next!;
  }
  if (list1 != null) {
    current!.next = list1;
  } else if (list2 != null) {
    current!.next = list2;
  }
  return dummy.next;
}
}
