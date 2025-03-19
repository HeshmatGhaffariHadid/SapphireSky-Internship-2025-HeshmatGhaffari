// 1- What is a stack, and how does it follow the LIFO principle?
// Stack is a data structure that stores object in LIFO (Last In First Out) algorithm, it means like a verticle tower
// that we have access to the top object of the stack.

// Implement a stack using an array in JavaScript.
class StackArray {
  List<int> stack = [];

  void push(int data) {
    stack.add(data);
  }

  void pop() {
    if (stack.isEmpty) return null;
    stack.removeLast();
  }

  int peek() {
    if (stack.isEmpty) return -1;
    return stack.last;
  }

  bool get isEmpty => stack.isEmpty;

  int get size => stack.length;

  void printStack() {
    print(stack);
  }
}

// How do you implement a stack using a linked list?
class Node {
  int? data;
  Node? next;
  Node(this.data, [this.next]);
}

class Stack {
  Node? _top;
  int size = 0;

  void push(int data) {
    Node newNode = Node(data);
    if (_top == null) _top = newNode;
    _top!.next = _top;
    _top = newNode;
    size++;
  }

  void pop() {
    if (_top == null) return null;
    _top = _top!.next;
    size--;
  }

  int? peek() {
    if (_top == null) return null;
    return _top!.data;
  }

  bool get isEmpty => _top == null;

  int get getSize => size;

  void printStack() {
    List<int> data = [];
    Node? current = _top;
    while (current != null) {
      data.add(current.data!);
      current = current.next;
    }
    print(data);
  }
}
