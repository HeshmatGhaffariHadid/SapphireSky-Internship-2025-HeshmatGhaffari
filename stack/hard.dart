void main() {
  Stack stack = Stack();
  stack.push(9);
  stack.push(13);
  stack.push(1);
  stack.push(-3);
  stack.pop();
  stack.push(-5);
  print(stack.getMin(stack));
}

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
}
