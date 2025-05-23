// 1- What is a stack, and how does it follow the LIFO principle?
// Stack is a data structure that stores object in LIFO (Last In First Out) algorithm, it means like a verticle tower
// that we have access to the top object of the stack.

// Implement a stack using an array in JavaScript.
// class StackArray {
//   List<int> stack = [];

//   void push(int data) {
//     stack.add(data);
//   }

//   void pop() {
//     if (stack.isEmpty) return null;
//     stack.removeLast();
//   }

//   int peek() {
//     if (stack.isEmpty) return -1;
//     return stack.last;
//   }

//   bool get isEmpty => stack.isEmpty;

//   int get size => stack.length;

//   void printStack() {
//     print(stack);
//   }
// }

// How do you implement a stack using a linked list?
class Node<T> {
  T? data;
  Node<T>? next;
  Node(this.data, [this.next]);
}

class Stack<T> {
  Node<T>? _top;
  int size = 0;

  void push(T data) {
    Node<T> newNode = Node(data);
    newNode.next = _top;
    _top = newNode;
    size++;
  }

  T? pop() {
    T? data = _top!.data;
    _top = _top!.next;
    size--;
    return data;
  }

  T? peek() {
    if (_top == null) return null;
    return _top!.data;
  }

  bool get isEmpty => _top == null;

  int get getSize => size;

  List<T> printStack() {
    List<T> stack = [];
    Node<T>? current = _top;
    while (current != null) {
      stack.add(current.data!);
      current = current.next;
    }
    return stack;
  }

// 4- Explain the purpose of push() and pop() in a stack.
// The push() method in a stack add a new object at the top of the stack, but the pop() method removes the top object
// or the top node of the stack and places the top to the next node.

// Write a function to check if a given string has balanced parentheses.
  bool isBalanced(String input) {
    Stack<String> stack = Stack<String>();
    for (int i = 0; i < input.length; i++) {
      if (input[i] == '{' || input[i] == '[' || input[i] == '(') {
        stack.push(input[i]);
      } else {
        if (peek() == '(' && input[i] == ')' ||
            peek() == '{' && input[i] == '}' ||
            peek() == '[' && input[i] == ']') {
          pop();
        } else {
          return false;
        }
      }
    }
    return isEmpty;
  }
}
