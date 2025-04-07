import 'simple.dart';
// How do you design a queue that supports enqueue(), dequeue(), and getMin() in constant time?
class MinQueue<T> {
  // helped by AI
   Queue mainQueue = Queue();
   Queue minQueue = Queue();

  void enqueue(T data) {
    mainQueue.enqueue(data);

    while (!minQueue.isEmpty && minQueue.rear!.data > data) {
      removeRear(minQueue);
    }
    minQueue.enqueue(data);
  }

  int? dequeue() {
    int? removed = mainQueue.dequeue();
    if (removed != null && removed == minQueue.peek()) {
      minQueue.dequeue();
    }
    return removed;
  }

  int? getMin() {
    return minQueue.peek();
  }

  void removeRear(Queue queue) {
    if (queue.front == null) return;
    if (queue.front == queue.rear) {
      queue.front = queue.rear = null;
      return;
    }

    Node? current = queue.front;
    while (current!.next != queue.rear) {
      current = current.next;
    }
    current.next = null;
    queue.rear = current;
  }
}
