import 'simple.dart';
import 'stack.dart';

// Implement a function to reverse a queue.
void reverseQueue(Queue queue) {
  List stack = [];
  while (queue.size > 0) {
    stack.add(queue.dequeue());
  }
  while (!stack.isEmpty) {
    queue.enqueue(stack.removeLast());
  }
}

// How do you implement a queue using two stacks?
class Node<T> {
  T? data;
  Node<T>? next;
  Node(this.data);
}

class NewQueue<T> {
  Stack s1 = Stack();
  Stack s2 = Stack();

  int get size => s1.size + s2.size;

  bool get isEmpty => s1.isEmpty && s2.isEmpty;

  void enqueue(T data) {
    s1.push(data);
  }

  T dequeue() {
    if (s2.isEmpty) {
      while (!s1.isEmpty) {
        s2.push(s1.pop());
      }
    }
    return s2.pop();
  }

  T peek() {
    if (s2.isEmpty) {
      while (!s1.isEmpty) {
        s2.push(s1.pop());
      }
    }
    return s2.peek();
  }
}

// void main() {
//   NewQueue queue = NewQueue();
//   print(queue.isEmpty);
//   queue.enqueue(12);
//   queue.enqueue(13);
//   queue.enqueue(14);
//   print(queue.peek());
//   print(queue.size);
//   print(queue.isEmpty);
//   print(queue.dequeue());
//   print(queue.peek());
//   print(queue.size);
// }
