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

// Implement a circular queue and explain how it works.
/// CircularQueue class using a generic linked list
class CircularQueue<T> {
  Node<T>? front;
  Node<T>? rear;

  bool get isEmpty => front == null;

  void enqueue(T data) {
    Node<T>? newNode = Node<T>(data);

    if (isEmpty) {
      front = rear = newNode;
      rear!.next = front; //to make it circular
    } else {
      rear!.next = newNode;
      rear = newNode;
      rear!.next = front; //keep it circular
    }
  }

  T? tdequeue() {
    if (isEmpty) {
      print("Queue is empty!");
      return null;
    }
    T removedData = front!.data!;
    if (front == rear) {
      front = rear = null;
    } else {
      front = front!.next;
      rear!.next = front;
    }
    return removedData;
  }

  T? peek() {
    if (isEmpty) {
      print("Queue is empty!");
      return null;
    }
    return front!.data;
  }

  void display() {
    if (isEmpty) {
      print("Queue is empty.");
      return;
    }

    print("Queue elements:");
    Node<T>? current = front;
    do {
      print(current!.data);
      current = current.next;
    } while (current != front); // it stops when reaches the front again and avoid imfinte loop 
  }
}
// How it works: A circular queue is a data structure that follows the FIFO (First-In-First-Out)
// principle but with a circular manner, it means that the last position of the queue is attached
// to the first position when it is full, and elements are dequeued in a cyclic manner.
