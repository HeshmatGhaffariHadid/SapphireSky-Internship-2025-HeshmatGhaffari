import 'simple.dart';
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

