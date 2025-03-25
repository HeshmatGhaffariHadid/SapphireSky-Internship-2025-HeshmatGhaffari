// 1- What is a queue, and how does it follow the FIFO principle?
// answer: Queue is linear data structure that follows FIFO (First In First Out) principle,
// FIFO principle means that the first element inserted into the queue will the first reserved
// (processed or popped) from the queue, therefore Queue is like a line of a bakery.

// 2- Implement a queue using an array in Dart.
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

void main() {
  QueueList queue = QueueList();
  print('Queue is empty: ${queue.isEmpty}');
  queue.enqueue(10);
  queue.enqueue(11);
  queue.enqueue(12);
  queue.display();
  print('Queue size: ${queue.size}');
  print('Queue front: ${queue.peek()}');
  print('Dequeue: ${queue.dequeue()}');
  queue.display();
  print('Queue size: ${queue.size}');
  print('Queue front: ${queue.peek()}');
  print('Queue is empty: ${queue.isEmpty}');
}
