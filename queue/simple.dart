// 1- What is a queue, and how does it follow the FIFO principle?
// answer: Queue is linear data structure that follows FIFO (First In First Out) principle,
// FIFO principle means that the first element inserted into the queue will the first reserved
// (processed or popped) from the queue, therefore Queue is like a line of a bakery.

// 2- Implement a queue using an array in Dart.
import 'dart:io';

class QueueList<T> {
  List<T> list = [];

  void enqueue(T value) {
    list.add(value);
  }

  T? dequeue() {
    if (list.isEmpty) {
      print('Queue is empty');
      return null;
    }
    return list.removeAt(0);
  }

  T? peek() {
    if (list.isEmpty) {
      print('Queue is empty!');
      return null;
    }
    return list.first;
  }

  bool get isEmpty => list.isEmpty;

  int get size => list.length;

  void display() {
    print('Queue: $list');
  }
}
// void main() {
//   QueueList queue = QueueList();
//   print('Queue is empty: ${queue.isEmpty}');
//   queue.enqueue(10);
//   queue.enqueue(11);
//   queue.enqueue(12);
//   queue.display();
//   print('Queue size: ${queue.size}');
//   print('Queue front: ${queue.peek()}');
//   print('Dequeue: ${queue.dequeue()}');
//   queue.display();
//   print('Queue size: ${queue.size}');
//   print('Queue front: ${queue.peek()}');
//   print('Queue is empty: ${queue.isEmpty}');
// }

// How do you implement a queue using a linked list?
class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class Queue<T> {
  Node? front;
  Node? rear;
  int size = 0;

  bool get isEmpty => front == null;

  void enqueue(T value) {
    Node? newNode = Node(value);
    if (isEmpty) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
    size++;
  }

  T? dequeue() {
    if (isEmpty) {
      print('Queue is empty!');
      return null;
    }
    T data = front!.data;
    front = front!.next;
    if (front == null) {
      rear = null;
    }
    size--;
    return data;
  }

  T? peek() {
    if (isEmpty) {
      print('Queue is empty!');
      return null;
    }
    return front!.data;
  }

  void display() {
    if (isEmpty) {
      print('Queue is empty!');
    } else {
      Node? current = front;
      while (current != null) {
        print(current.data);
        current = current.next;
      }
    }
  }
}
// void main() {
//   Queue queue = Queue();
//   print('Queue is empty: ${queue.isEmpty}');
//   queue.enqueue(1);
//   queue.enqueue(2);
//   queue.enqueue(3);
//   print('Queue\'s front data: ${queue.front!.data}');
//   print('Queue\'s rear data: ${queue.rear!.data}');
//   queue.display();
//   print('Queue size: ${queue.size}');
//   queue.dequeue();
//   queue.display();
//   print('Queue size: ${queue.size}');
//   print('Queue is empty: ${queue.isEmpty}');
// }

// What is the difference between a queue and a stack?
// answer: Both Stack and Queue are linear data structures, but the main difference is in 
// their arrangement of data. Stack follows a Last In First Out (LIFO) arrangement, 
// meaning the last inserted data is processed first. On the other hand, Queue follows a First In, 
// First Out (FIFO) arrangement, meaning the first inserted data is processed first. 