void main() {
  Node node = Node(1, Node(2, Node(3, Node(4, Node(5)))));
  node.next!.next = node.next!;
  LinkedList list = LinkedList();
  print(list.findCycleStartPoint(node));
}

/* 1- What is a linked list, and how does it differ from an array?
Linked list is a linear data structure where elements are connected togather using pointers. In linked list each node 
contains data and a pointer to the next node in the list. */

class Node {
  int data;
  Node? next;
  Node(this.data, [this.next]);
}

class LinkedList {
  Node? head;
  int size = 0;

// Implement a function to insert a node at the beginning of a linked list.
  void addFront(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
    size++;
  }

  // How do you delete a node from a linked list?
  void deleteNode() {
    if (head == null) return;
    Node? temp = head!.next;
    head!.next = null;
    head = temp;
    size--;
  }

  // Write a function to traverse and print a linked list.
  void displayList() {
    Node? currentData = head!;
    while (currentData != null) {
      print(currentData.data);
      currentData = currentData.next;
    }
  }

  // Implement a function to find the length of a linked list.
  //1- if we create a size variable and initialize it in add and delete node methods: (prefered)
  int printLength() => size;

  //2- method itself go through the list and count the size
  int printSize() {
    int counter = 0;
    if (head == null) return 0;
    while (head != null) {
      counter++;
      head = head!.next;
    }
    return counter;
  }

  // medium part
  // Write a function to find the middle node of a linked list.
  int findMiddleNode() {
    if (head == null) return 0;
    Node? goEnd = head;
    Node? goMiddle = head;
    while (goEnd != null && goEnd.next != null) {
      goMiddle = goMiddle!.next;
      goEnd = goEnd.next!.next;
    }
    return goMiddle!.data;
  }

  // Implement a function to reverse a linked list.
  void reverseList() {
    Node? newHead;
    Node? current = head;
    Node? next;
    while (current != null) {
      next = current.next;
      current.next = newHead;
      newHead = current;
      current = next;
    }
    head = newHead;
  }

  // How do you detect a cycle in a linked list?
  bool isCyclic(Node head) {
    Node? fast = head;
    Node? slow = head;
    while (fast != null && fast.next != null) {
      fast = fast.next!.next;
      slow = slow!.next;
      if (fast == slow) return true;
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

// How do you find the nth node from the end of a linked list?
  int findNthNode(int n) {
    if (n > size || n == 0) {
      return -1;
    }
    Node? firstPointer = head;
    Node? secondPointer = head;
    int counter = 1;

    while (counter <= n) {
      firstPointer = firstPointer!.next;
      counter++;
    }
    counter = 1;
    while (counter <= n && firstPointer != null) {
      firstPointer = firstPointer.next;
      secondPointer = secondPointer!.next;
    }
    return secondPointer!.data;
  }

  // hard part

  // Implement a function to remove duplicates from a linked list.
  void removeDuplicates() {
    if (head == null) return;
    //first approach not recommanded
    // Node? current = head;
    // while (current != null) {
    //   Node? current2 = current;
    //   while (current2!.next != null) {
    //     if (current2.next!.data == current.data) {
    //       current2.next = current2.next!.next;
    //     } else {
    //       current2 = current2.next;
    //     }
    //   }
    //   current = current.next;
    // }
    // second approach (recommanded)
    Set<int> uniques = {};
    Node? current = head;
    uniques.add(current!.data);

    while (current!.next != null) {
      if (uniques.contains(current.next!.data)) {
        current.next = current.next!.next;
      } else {
        uniques.add(current.next!.data);
        current = current.next;
      }
    }
  }

  // How do you check if two linked lists intersect?
  bool doIntersect(Node head1, Node head2) {
    Node? current1 = head1;
    Node? current2 = head2;
    while (current1!.next != null) {
      current1 = current1.next;
    }
    while (current2!.next != null) {
      current2 = current2.next;
    }
    if (current1.data == current2.data) return true;
    return false;
  }

  // Write a function to find the starting point of a cycle in a linked list.
  int findCycleStartPoint(Node head) {
    Node? fast = head;
    Node? slow = head;
    bool isCyclic = false;
    while (fast != null && fast.next != null) {
      fast = fast.next!.next;
      slow = slow!.next;
      if (fast == slow) {
        isCyclic = true;
        break;
      }
    }
    slow = head;
    while (isCyclic) {
      fast = fast!.next;
      slow = slow!.next;
      if (slow == fast) return slow!.data;
    }
    return -1;
  }
}
