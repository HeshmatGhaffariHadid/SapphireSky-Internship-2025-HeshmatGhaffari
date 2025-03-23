import 'dart:collection';

// How do you design a stack that supports push(), pop(), and getMin() in constant time?
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
    if (isEmpty) {
      throw Exception('Stack is empty!');
    }
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

  int getMin(Stack stack) {
    Stack main = Stack();
    Stack min = Stack();
    int repeat;
    for (int i = 0; i < stack.size; i++) {
      main.push(stack.peek());
      if (min.isEmpty) {
        min.push(stack.peek());
      } else {
        if (min.peek()! > stack.peek()) {
          min.push(stack.peek());
        } else {
          repeat = min.peek()!;
          min.push(repeat);
        }
      }
    }
    return min.pop()!;
  }
  // Implement an LRU (Least Recently Used) cache using a stack.
  // I didn't have any idea in this concept
}

// How do you implement a stack using only one queue?
class StackUsingQueue {
  Queue queue = Queue();

  void push(int value) {
    queue.add(value);
    for (int i = 0; i < queue.length -1; i++) {
      int poped = queue.removeFirst();
      queue.add(poped);
    }
  } // [1,2,3,4,5] add -> 6 ==> [1,2,3,4,5,6] loop -> [6,1,2,3,4,5]

  int? pop() {
    if (queue.isEmpty) return null;
    return queue.removeFirst();
  }

  int top() {
    return queue.isEmpty ? null : queue.first;
  }

  bool get isEmpty => queue.isEmpty;
}

void main() {
  StackUsingQueue stackUsingQueue = StackUsingQueue();
  print(stackUsingQueue.isEmpty);
  stackUsingQueue.push(12);
  stackUsingQueue.push(13);
  stackUsingQueue.push(14);
  stackUsingQueue.push(15);
  stackUsingQueue.push(10);
  print(stackUsingQueue.top());
  stackUsingQueue.pop();
  print(stackUsingQueue.top());
  print(stackUsingQueue.isEmpty);
}
