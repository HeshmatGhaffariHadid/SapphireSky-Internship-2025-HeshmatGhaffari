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

// Explain priority queues and their applications.
// Answer: Priority Queue is a specialized data structure which is similar to regular Queue, but
// some different feature that each element has it's own priority, in a priority queue each element
// is served based on their priority, the element with the highest or lowest priority will be dequeued
// first regardless of their order.

// Aplications of Priority Queues
// 1- CPU Scheduling:
// Operating systems use priority queues to manage process execution. Processes with higher 
// priority are given access to the CPU before others.
// 2- Dijkstra’s and A Algorithms*:
// In graph algorithms for finding the shortest path, a priority queue helps in selecting the 
// next vertex with the shortest distance.
// 3- Data Compression (Huffman Coding):
// Used to build a Huffman tree, where characters with the lowest frequency are combined first.
// 4- Network Routing:
// Routers use priority queues to determine the order of packet transmission, prioritizing
// certain types of traffic.