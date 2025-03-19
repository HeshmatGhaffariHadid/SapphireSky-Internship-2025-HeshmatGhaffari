// 1- What is a stack, and how does it follow the LIFO principle?
// Stack is a data structure that stores object in LIFO (Last In First Out) algorithm, it means like a verticle tower
// that we have access to the top object of the stack.

// Implement a stack using an array in JavaScript.
class Stack {
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
